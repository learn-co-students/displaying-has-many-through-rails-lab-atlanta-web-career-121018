class DoctorsController < ApplicationController
  def show
    @doctor = Doctor.find_or_create_by(params[:id])
  end
end
