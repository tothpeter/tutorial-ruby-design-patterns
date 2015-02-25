require "proxy_pattern"

describe "Proxy Pattern" do

  it "delegates all functionality to the real object" do
    # Stub functions
    hero = Hero.new
    
    computer = double("computer", queue: [], add: [], execute: true)
    # Old syntax
    # Computer.stub(:new).and_return(computer)
    # New
    allow(Computer).to receive(:new).and_return(computer)

    proxy = ComputerProxy.new hero

    expect(computer).to receive :add 
    proxy.add(double("command"))

    
    hero.keywords << :computer
    # Old syntax
    # computer.should_receive :execute
    # New
    expect(computer).to receive :execute
    proxy.execute
  end

end