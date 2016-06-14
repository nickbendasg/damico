class EmployeesController < ApplicationController
include EmployeesHelper

def new
	@employee = Employee.new
end

def index 
	@employees = Employee.all
end

def show
	@employee = Employee.find(params[:id])
	
	@timestamp = Timestamp.new
	@timestamp.employee_id = @employee.id
end

def update
	@employee = Employee.find(params[:id])
	@employee.update(employee_params)

	redirect_to employee_path(@employee)
end

def create
	@employee = Employee.new(employee_params)
	@employee.hrs_todate = 0
	@employee.save

	redirect_to employee_path(@employee)
end

def edit
	@employee = Employee.find(params[:id])
end



end
