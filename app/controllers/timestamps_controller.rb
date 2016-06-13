class TimestampsController < ApplicationController

def create
	@timestamp = Timestamp.new(timestamp_params)
	@timestamp.employee_id = params[:employee_id]
	
	@timestamp.clock = Time.current
	@timestamp.status = "testing"

	@timestamp.save

	redirect_to employee_path(@timestamp.employee)
end

def timestamp_params
	params.require(:timestamp).permit(:working)
end

end
