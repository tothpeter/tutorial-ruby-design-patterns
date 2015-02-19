require "singleton"

class HeroFactory

  include Singleton

  def create_warrior
    Warrior.new
  end

  def create_mage
    Mage.new
  end
end

class HeroFactory2

  def self.instance
    @@instance ||= self.send :new
  end
  def create_warrior
    Warrior.new
  end

  def create_mage
    Mage.new
  end

  private_class_method :new
end