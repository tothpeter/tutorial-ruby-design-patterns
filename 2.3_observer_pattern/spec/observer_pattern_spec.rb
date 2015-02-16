require "observer_pattern"

describe "Observer Pattern" do
  # Integration tests
  
  describe Hero do
    let(:hero) { hero = Hero.new }

    it "is cursed when discovers cursed Tile" do
      tile = Tile.new cursed: true
      hero.discover tile

      expect(hero.cursed?).to be true
      # expect(hero).to be_cursed
    end

    it "is not cursed when discovers simple Tile without curse" do
      tile = Tile.new
      hero.discover tile

      expect(hero.cursed?).to be false
    end

    it "has default health equal to 10" do
      expect(hero.health).to eq(10)
    end

    it "can be famaged" do
      hero.damage 6
      expect(hero.health).to eq(4)
    end
  end

  describe Tile do

    it "activates curse" do
      hero = Hero.new
      tile = Tile.new cursed: true

      hero.discover tile
      
      tile.activate_curse
      expect(hero.health).to eq(6)
    end

    it "activates curse on several heros" do
      hero1 = Hero.new
      hero2 = Hero.new

      tile = Tile.new cursed: true

      hero1.discover tile
      hero2.discover tile

      tile.activate_curse

      expect(hero1.health).to eq(6)
      expect(hero2.health).to eq(6)
    end

    it "is no cursed by default" do
      tile = Tile.new
      expect(tile.cursed?).to be false
    end

    it "can be created as cursed" do
      tile = Tile.new cursed: true
      expect(tile.cursed?).to be true
    end
  end
end