class PlansController < ApplicationController
  def new
    @plan = Plan.new
  end
  
  def create
    @plan = current_user.plans.new(plan_params)
    if @plan.save
      redirect_to new_plan_path
    else
      render :new
    end
  end


  def index
  end


  def edit
  end

  def show
  end
end
