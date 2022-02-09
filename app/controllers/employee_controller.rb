class EmployeeController < ApplicationController
  def index
    @emp = Employee.all
  end


  def destroy
    @emp =Employee.find(params[:id])
    @emp.destroy
    redirect_to employee_path
  
  end

  def new
    @employee = Employee.new
  end

  def show 
    @employee = Employee.find(params[:id])
    end

  def create  
    @employee = Employee.new#(post_params)
    p "---------------------------------CREATE------------------------------"
    @employee.name = params[:name]
     @employee.email = params[:email]
     @employee.job = params[:job]
     @employee.salary = params[:salary]
     @employee.employee_status = params[:employee_status]
     @employee.teams_id = params[:teams_id]
     
     @employee.save
    p "---------------------------------CREATED------DONE------------------------"

   respond_to do |format|
     if @employee.save
       format.html { redirect_to employee_path, notice: "user was successfully created." }
       format.json { render :show, status: :created, location: @employee }
     else
       format.html { render :new, status: :unprocessable_entity }
       format.json { render json: @employee.errors, status: :unprocessable_entity }
       
     end
   end
 end

end
