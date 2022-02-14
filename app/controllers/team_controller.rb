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
    @team.team_lead = params[:team_lead]
    @team.divisions_id = params[:divisions_id]
    @team.save
    p "---------------------------------CREATED------DONE------------------------"
    @teamn = Team.last
    @teamn.members = Employee.where(teams_id:@teamn.id).name
    @team.save

    respond_to do |format|
      if @team.save
        format.html { redirect_to team_path, notice: "user was successfully created." }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end
  def edit
    @team = Team.find(params[:id])
  end
  
    def update
        @team = Team.find(params[:id])
        if @team.update(user_params)
          redirect_to "/team/#{@team.id}" 
        else
          p"bad"
        end
    end
  
    private
    def user_params
      params.require(:team).permit(:name,:description,:team_lead,:divisions_id)
    end

end
