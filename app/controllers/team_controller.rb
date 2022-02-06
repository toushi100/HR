class TeamController < ApplicationController
  def index
    @team = Team.all
  end

  def new
    @team = Team.new
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to team_path
  end

  def show 
    @team = Team.find(params[:id])
    end


  def create  
    @team = Team.new#(post_params)
    p "---------------------------------CREATE------------------------------"
    @team.name = params[:name]
    @team.description = params[:description]
    @team.members = params[:members]
    @team.team_lead = params[:team_lead]
    @team.save
    p "---------------------------------CREATED------DONE------------------------"

    respond_to do |format|
      if @team.save
        format.html { redirect_to user_url(@team), notice: "user was successfully created." }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

end
