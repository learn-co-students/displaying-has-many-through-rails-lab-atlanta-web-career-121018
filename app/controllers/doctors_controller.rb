class DoctorsController < ApplicationController

    def index
        @doctors = Doctor.all
    end

    def show
        @doctor = Doctor.find(params[:id])
    end

    def new
        @doctor = Doctor.new
    end

    def create
        @doctor - Doctor.new(docs_params)
        redirect_to doctors_path(@doctor)
    end

    private
    def doc_params
        params.require(:doctor).permit(:name, :department)
    end
end
