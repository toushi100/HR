class TargetController < ApplicationController
  before_action :authenticate_user!

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
    # params[:start_date] =  params[:start_date(1i)]+"-"+params[:start_date(2i)]+"-"+params[:start_date(3i)]
    # params[:finish_date] =  params[:finish_date(1i)]+"-"+params[:finish_date(2i)]+"-"+params[:finish_date(3i)]
    #p  params[:start_date(1i)]
    p  params[:finish_date]
    p "---------------------------------CREATE------------------------------"
    @target.title = params[:title]
    @target.description = params[:description]
    @target.start_date = params[:start_date]
    @target.finish_date = params[:finish_date]
    @target.team_id = params[:team_id]
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

  def edit
    @target = Target.find(params[:id])
  end
  
    def update
        @target = Target.find(params[:id])
        if @target.update(user_params)
          redirect_to "/employee/#{@target.id}" 
        else
          p"bad"
        end
    end
  
    private
    def user_params
      params.require(:target).permit(:title,:description,:start_date,:finish_date,:team_id,:status)
    end
  
 
end
