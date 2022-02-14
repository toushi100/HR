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
    @div.manager = Employee.find(params[:employees_id]).name
    @div.employees_id = params[:employees_id]    
    
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

  def edit
    @div = Division.find(params[:id])
  end
  
    def update
        @div = Division.find(params[:id])
        if @div.update(user_params)
          redirect_to "/division/#{@div.id}" 
        else
          p"bad"
        end
    end

    private
    def user_params
      params.require(:division).permit(:name,:description,:manager,:employees_id)
    end


end
