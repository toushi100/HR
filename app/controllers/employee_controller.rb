class EmployeeController < ApplicationController
  before_action :authenticate_user!

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
    @employee.name = params[:name]
     @employee.email = params[:email]
     @employee.job = params[:job]
     @employee.salary = params[:salary]
     @employee.employee_status = params[:employee_status]
     @employee.teams_id = params[:teams_id]
     @employee.save
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
 def edit
  @emp = Employee.find(params[:id])
end

  def update
      @emp = Employee.find(params[:id])
      if @emp.update(user_params)
        redirect_to "/employee/#{@emp.id}" 
      else
        p"bad"
      end
  end

  private
  def user_params
    params.require(:employee).permit(:name,:email,:job,:salary,:employee_status,:teams_id)
  end


end
