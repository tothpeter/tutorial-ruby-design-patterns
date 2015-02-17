require "command_pattern"

describe "Command Pattern" do
  describe "Commands" do
    
    describe AmplifyShieldCommand do
      it "amplifies shield" do
        command = AmplifyShieldCommand.new
        expect(command.execute).to eq("Amplified Plutonium-Gamma Shield")
      end
    end

    describe CalibrateDriverCommand do
      it "calibrates driver" do
        command = CalibrateDriverCommand.new
        expect(command.execute).to eq("Calibrated Plutonium-Rod Driver")
      end
    end

    describe TestComplierCommand do
      it "tests compier" do
        command = TestComplierCommand.new
        expect(command.execute).to eq("Tested Jupiter Wave Compier")
      end
    end

    describe InstallRegulatorCommand do
      it "installes regulator" do
        command = InstallRegulatorCommand.new
        expect(command.execute).to eq("Installed Hydroelectric Magnet")
      end
    end

  end
end