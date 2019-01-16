class AppointmentsController < ApplicationController

    def index
        @appointments = Appointment.all
    end

    def show
        @appointment = Appointment.find(params[:id])
    end

    def new
        @appointment = Appointment.new
    end

    def create
        @appointment - Appointment.new(apps_params)
        redirect_to appointments_path(@appointment)
    end

    private
    def apps_params
        params.require(:appointment).permit(:appointment_datetime, :patient_id, :doctor_id,)
    end
end
