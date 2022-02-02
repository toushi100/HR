class TargetController < ApplicationController
  def index
  @target = Target.all
  p "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
  end
  def show
    @target = Target.find(params[:id])
    p @target.title
  end
  def destroy
    @target = Target.find(params[:id])
    @target.destroy
    render :index
  end

 
end
