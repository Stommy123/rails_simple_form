class FormsController < ApplicationController
  before_action :set_form, only: [:show, :edit, :update, :destroy]

  def index
    @forms = Form.all
  end

  def new
    @form = Form.new
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
    @form.destroy
    redirect_to forms_path
  end

  private

  def set_form
    @form = Form.find(params[:id])
  end

  def form_params
    params.require(:form).permit(:email, :region, :joint_replacement, :sports_medicine, :orthopedic_trauma, :spine, :other_conditions, :substitutions, :signature, :date)
  end

end
