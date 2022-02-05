class EmployeeController < ApplicationController
  def index
    @emp = Employee.all
  end


  def destroy
    @emp =Employee.find(params[:id])
    @emp.destroy
    redirect_to employee_path
  
  end

end
