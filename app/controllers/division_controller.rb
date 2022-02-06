class DivisionController < ApplicationController
  def index
    @div = Division.all
  end

  def new
    @div = Division.new
  end
  def show 
    @div = Division.find(params[:id])
    end

  def destroy
    @div = Division.find(params[:id])
    @div.destroy
    redirect_to division_path
  end

  def create  
    @div = Division.new#(post_params)
    p "---------------------------------CREATE------------------------------"
    @div.name = params[:name]
    @div.description = params[:description]
    @div.teams = params[:teams]
    @div.manager = params[:manager]
    @div.save
    p "---------------------------------CREATED------DONE------------------------"

    respond_to do |format|
      if @div.save
        format.html { redirect_to division_path, notice: "user was successfully created." }
        format.json { render :show, status: :created, location: @div }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @div.errors, status: :unprocessable_entity }
      end
    end
  end



end
