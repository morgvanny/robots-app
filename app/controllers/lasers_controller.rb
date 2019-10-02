class LasersController < ApplicationController

  def index
    if params[:robot_id]
      @lasers = Robot.find(params[:robot_id]).lasers
    else
      @lasers = Laser.all
    end
  end

  def new
    if params[:robot_id]
      @laser = Laser.new(robot_id: params[:robot_id])
    else
      @laser = Laser.new
    end
  end

  def show
    @laser = Laser.find(params[:id])
  end
  def create
    @laser = Laser.new(laser_params)
    binding.pry
    if @laser.save
      redirect_to @laser
    else
      render :new
    end
  end

  private

  def laser_params
     params.require(:laser).permit(
      :color,
      :robot_id,
    )
  end
end
