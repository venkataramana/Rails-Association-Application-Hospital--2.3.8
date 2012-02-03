class PatientsController < ApplicationController
        def index
#                @patients=Patient.find(:all, :select=>"gender, age").map(&:age)
                @patients=Patient.find_by_sql("select * from patients")
   #             render :text => @patients.inspect and return false
        end
        def new
                @patient=Patient.new
                @doctors=Doctor.find(:all)
                #render :text => @doctors.inspect and return false
        end
        def create
                @patient=Patient.new(params[:patient])
               # render :text => params.inspect and return false
                if @patient.save
                        @patient.appointments.create(params[:appointment])
                        redirect_to "/patients"
                else
                        render :action=>"new"
                end
        end
        def show
                @patient=Patient.find(params[:id])
        end
end

