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

end

def create
	@employee = Employee.new(employee_params)
	@employee.save

	redirect_to employee_path(@employee)
end


end
