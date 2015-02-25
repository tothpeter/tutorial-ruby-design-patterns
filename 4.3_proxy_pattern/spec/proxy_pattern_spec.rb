require "proxy_pattern"

describe "Proxy Pattern" do

  it "delegates all functionality to the real object" do
    # Stub functions
    computer = double("computer", queue: [], add: [], execute: true)
    proxy = ComputerProxy.new computer

    expect(computer).to receive :add 
    proxy.add(double("command"))

    # Old syntax
    # computer.should_receive :execute
    # New
    expect(computer).to receive :execute
    proxy.execute
  end

end