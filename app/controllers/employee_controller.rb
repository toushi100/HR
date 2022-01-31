class EmployeeController < ApplicationController
  def index
    @emp = Employee.all
  end
end
