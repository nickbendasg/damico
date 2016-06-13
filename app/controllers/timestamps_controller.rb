class TimestampsController < ApplicationController
include TimestampsHelper

def create

if params[:commit] == "Clock In"

	@timestamp = Timestamp.new()
	@timestamp.employee_id = params[:employee_id]

	
	
	@timestampOLD = Employee.find(params[:employee_id]).timestamps.last
	
	if @timestampOLD === nil
		@timestamp.status = 'Employees first time'
		@timestamp.working = 'true'
	else
		if @timestampOLD.working
			@timestamp.working = 'false'
			@timestamp.status = 'Employee clocked out'
		else
			@timestamp.working = 'true'
			@timestamp.status = 'Employee clocked in'
		end
	end
	
	@timestamp.start = Time.current
	@timestamp.save

elsif params[:commit] == "Clock Out"
	
	@timestamp = Timestamp.last
	@timestamp.stop = Time.current
	@timestamp.working = 'false'
	@timestamp.save

end

redirect_to employee_path(@timestamp.employee)


end

def update

	@timestamp = Timestamp.find(params[:id])
	@timestamp.update(timestamp_params)

	redirect_to employee_path(@employee)
	
end

def self.clockout

	@timestamp.save
end

end
