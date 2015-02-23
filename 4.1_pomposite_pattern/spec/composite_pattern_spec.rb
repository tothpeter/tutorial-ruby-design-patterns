require "composite_pattern"

describe "Composite Pattern" do

  describe Encounter do
    it "has example reward of 100" do
      expect(Encounter.new.reward).to eq 100
    end
  end

  describe Puzzle do
    it "has example reward of 200" do
      expect(Puzzle.new.reward).to eq 200
    end
  end

  describe Diplomacy do
    it "has example reward of 500" do
      expect(Diplomacy.new.reward).to eq 500
    end
  end

end