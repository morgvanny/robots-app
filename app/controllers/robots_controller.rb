class RobotsController < ApplicationController
  before_action :find_robot, only: [:show, :edit, :update, :destroy ]
  
  def index
    @robots = Robot.all
  end

  def show
  end

  def new
    @robot = Robot.new
    params[:n] = 1 unless params[:n]
    params[:n].to_i.times do
      @laser = @robot.lasers.build
    end
  end

  def edit
  end

  def create
    @robot = Robot.new(robot_params)
    if @robot.save
    redirect_to @robot
    else
      render :new
    end
  end

  def update
    if @robot.update(robot_params)
    redirect_to @robot
    else
      render :edit
    end
  end

  def destroy
    @robot.destroy
    redirect_to robots_path
  end


  private

  def robot_params
    params.require(:robot).permit(
      :name,
      :number_of_legs,
      :capable_of_love,
      lasers_attributes: [:color]
    )
  end

  def find_robot
    @robot = Robot.find(params[:id])    
  end

end
