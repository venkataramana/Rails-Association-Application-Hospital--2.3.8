class DoctorsController < ApplicationController
        def index
               @doctors=Doctor.find(:all, :joins => "left join appointments on doctors.id  = appointments.doctor_id", :select => "doctors.*, count(appointments.id) as appointment_count", :group => "doctors.id")
        end
        def new
                @doctor=Doctor.new
               # @patients=Patient.find(:all)
        end
        def create
               # render :text => params.inspect and return false
                @doctor=Doctor.new(params[:doctor])
                if @doctor.save
                        redirect_to "/doctors"
                else
                        render :action=>"new"
                end
        end
        def show
                @doctor=Doctor.find(params[:id])
        end
end

