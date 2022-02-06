class TargetController < ApplicationController
  def index
  @target = Target.all

  end


  def show
    @target = Target.find(params[:id])
    p @target.title
  end


  def new
    @target = Target.new
    #@team = Team.all
  end 
  
  
  def destroy
    @target = Target.find(params[:id])
    @target.destroy
    redirect_to target_path
  end


  def create  
    @target = Target.new#(post_params)
    p "---------------------------------CREATE------------------------------"
    @target.title = params[:title]
    @target.description = params[:description]
    @target.start_date = params[:start_date]
    @target.finish_date = params[:finish_date]
    @target.team = params[:team]
    @target.status = params[:status]
    @target.save
    p "---------------------------------CREATED------DONE------------------------"

    respond_to do |format|
      if @target.save
        format.html { redirect_to target_path, notice: "user was successfully created." }
        format.json { render :show, status: :created, location: @target }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @target.errors, status: :unprocessable_entity }
      end
    end
  end
 
end
