class Reactor
  def initialize
    @functional = false
    @right_command = %Q{
Amplified Plutonium-Gamma Shield
Calibrated Plutonium-Rod Driver
Tested Jupiter Wave Compier
Installed Hydroelectric Magnet
}
  end

  def fix result
    @functional = result == @right_command
  end

  def functional?
    @functional
  end
end

class Computer
  attr_reader :queue

  def initialize
    @queue = []
  end

  def add command
    @queue << command
  end

  def execute
    @queue.inject("\n") { |result, command| result + command.execute + "\n" }
  end
end

class AmplifyShieldCommand
  def execute
    "Amplified Plutonium-Gamma Shield"
  end
end

class CalibrateDriverCommand
  def execute
    "Calibrated Plutonium-Rod Driver"
  end
end

class TestComplierCommand
  def execute
    "Tested Jupiter Wave Compier"
  end
end

class InstallRegulatorCommand
  def execute
    "Installed Hydroelectric Magnet"
  end
end