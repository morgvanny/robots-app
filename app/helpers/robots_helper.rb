module RobotsHelper
  def birthday(robot)
    robot.created_at.strftime("%B %d")
  end
end
