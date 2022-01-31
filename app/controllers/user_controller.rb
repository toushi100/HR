class UserController < ApplicationController
  def index
    @some = "this is the variable"
    @user = User.all
  end
end
