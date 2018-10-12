class FormsController < ApplicationController
  before_action :set_form, only: [:show, :edit, :update, :destroy]

  def new
  end

  def create
  end 

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_form
    @form = Form.find(params[:id])
  end

  def form_params
    params.require(:forms).permit(:user_id, :region, :joint_replacement, :sports_medicine, :orthopedic_trauma, :spine, :other_conditions, :substitutions, :signature, :date)
  end

end
