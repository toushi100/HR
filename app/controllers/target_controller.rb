class TargetController < ApplicationController
  def index
  @target = Target.all
  end
end
