class PatientsController < ApplicationController

    def index
        @patients = Patient.all
    end

    def show
        @patient = Patient.find(params[:id])
    end

    def new
        @patient = Patient.new
    end

    def create
        @patient - Patient.new(pats_params)
        redirect_to patients_path(@patient)
    end

    private
    def pats_params
        params.require(:patient).permit(:name, :age)
    end
end
