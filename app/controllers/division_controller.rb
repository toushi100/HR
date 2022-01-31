class DivisionController < ApplicationController
  def index
    @div = Division.all
  end
end
