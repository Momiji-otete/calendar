class PlansController < ApplicationController
  before_action :authenticate_user!
  before_action :check_login_user, only: [:edit, :update]
  
  def new
    @plan = Plan.new
  end

  def create
    @plan = current_user.plans.new(plan_params)
    if @plan.save
      redirect_to plans_path, notice: "追加しました"
    else
      render :new
    end
  end


  def index
    @plans = Plan.all
  end

  def show
    @plan = Plan.find(params[:id])
    @plans = Plan.all
  end

  def edit
  end

  def update
    if @plan.update(plan_params)
      redirect_to plan_path(@plan), notice: "更新しました"
    else
      render :edit
    end
  end

  def destroy
    @plan = Plan.find(params[:id])
    @plan.destroy
    redirect_to plans_path, alert: "削除しました"
  end

  private

  def plan_params
    params.require(:plan).permit(:title, :body, :date_time)
  end
  
  def check_login_user
    @plan = Plan.find(params[:id])
    unless @plan.user_id == current_user.id
      redirect_to plans_path
    end
  end
end
