class PlansController < ApplicationController
  def new
    @plan = Plan.new
  end
  
  def create
    @plan = current_user.plans.new(plan_params)
    if @plan.save
      redirect_to plans_path
    else
      render :new
    end
  end


  def index
    @plans = Plan.all
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])
    if @plan.update(plan_params)
      redirect_to plan_path(@plan)
    else
      render :edit
    end
  end
  
  
  private
  
  def plan_params
    params.require(:plan).permit(:title, :body, :date_time)
  end
end
