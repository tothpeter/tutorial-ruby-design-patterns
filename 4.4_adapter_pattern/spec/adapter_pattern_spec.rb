require "adapter_pattern"

describe "Adapter Pattern" do

  describe "Finishing quest" do
    it "rewards hero with experience points" do
      # difficulty * 50 / hero_level
      hero = Hero.new
      quest = Quest.new 5

      hero.take_quest quest
      hero.finish_quest quest

      expect(hero.experience).to eq 250
    end
  end

end