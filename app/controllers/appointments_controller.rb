class AppointmentsController < ApplicationController
        def index
                @appointments=Appointment.find(:all)
        end
end

