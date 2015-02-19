class HeroFactory

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