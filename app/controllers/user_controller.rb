class UserController < ApplicationController
  def index
    @some = "this is the variable"
    @user = User.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to user_path
  end
  def show 
  @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end 
  def create  
     @user = User.new#(post_params)
     p "---------------------------------CREATE------------------------------"
     @user.name = params[:name]
      @user.email = params[:email]
      @user.passward = params[:passward]
      @user.save
     p "---------------------------------CREATED------DONE------------------------"

    respond_to do |format|
      if @user.save
        format.html { redirect_to user_url(@user), notice: "user was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
        
      end
    end
  end




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    # def post_params
    #   params.require(:user).permit(:name,:email,:passward)
    # end

end
