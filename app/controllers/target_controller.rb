class TargetController < ApplicationController
  def index
  @target = Target.all

  end


  def show
    @target = Target.find(params[:id])
    p @target.title
  end

  
  def destroy
    @target = Target.find(params[:id])
    @target.destroy
    redirect_to target_path
  end

 
end
