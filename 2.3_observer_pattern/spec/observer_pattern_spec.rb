require "observer_pattern"

describe "Observer Pattern" do
  # Integration tests
  
  describe Hero do
    it "is cursed when discovers cursed Tile" do
      hero = Hero.new
      tile = Tile.new cursed: true
      hero.discover tile

      expect(hero.cursed?).to be true
      # expect(hero).to be_cursed
    end

    it "is not cursed when discovers simple Tile without curse" do
      hero = Hero.new
      tile = Tile.new
      hero.discover tile

      expect(hero.cursed?).to be false
    end
  end

  describe Tile do
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