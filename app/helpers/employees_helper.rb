module EmployeesHelper

def employee_params
	params.require(:employee).permit(:first, :last, :hrly_cost)
end


end
