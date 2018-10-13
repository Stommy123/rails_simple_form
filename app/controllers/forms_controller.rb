class FormsController < ApplicationController
  before_action :set_form, only: [:show, :edit, :update, :destroy]

  def index
    @forms = Form.all
  end

  def new
    @form = Form.new
    1.times { @form.surgeon_contacts.build }
    5.times { @form.dme_contacts.build }
    5.times { @form.pt_contacts.build }
  end

  def create
    @form = current_user.forms.new(form_params)
    @form.save
    redirect_to forms_path
  end

  def show
  end

  def edit
  end

  def update
    @form.update(form_params)
  end

  def destroy
    @form.surgeon_contacts.destroy_all
    @form.dme_contacts.destroy_all
    @form.pt_contacts.destroy_all
    @form.destroy
    redirect_to forms_path
  end

  private

  def set_form
    @form = Form.find(params[:id])
  end

  def form_params
    params.require(:form).permit(
      :email,
      :region,
      :joint_replacement,
      :sports_medicine,
      :orthopedic_trauma,
      :spine,
      :other_conditions,
      :substitutions,
      :signature,
      :date,
      surgeon_contacts_attributes: [
        :name,
        :primary,
        :phone,
        :street,
        :city,
        :state,
        :zip,
      ],
      dme_contacts_attributes: [
        :name,
        :primary,
        :phone,
        :street,
        :city,
        :state,
        :zip,
      ],
      pt_contacts_attributes: [
        :name,
        :primary,
        :phone,
        :street,
        :city,
        :state,
        :zip,
      ]
    )
  end

end
