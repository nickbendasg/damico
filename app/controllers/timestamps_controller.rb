class TimestampsController < ApplicationController
include TimestampsHelper

def create
	@timestamp = Timestamp.new()
	@timestamp.employee_id = params[:employee_id]

	@timestampOLD = Employee.find(params[:employee_id]).timestamps.last
	if @timestampOLD.working
		@timestamp.working = 'false'
		@timestamp.status = 'Employee clocked out'
	else
		@timestamp.working = 'true'
		@timestamp.status = 'Employee clocked in'
	end
	
	@timestamp.clock = Time.current

	@timestamp.save

	redirect_to employee_path(@timestamp.employee)
end


end
