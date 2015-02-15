require "strategy"

describe "Strategy Pattern" do

  describe Hero do
    let(:hero) { Hero.new BattleStats.new }

    it "has damage" do
      expect(hero.damage).to eq(10)
    end

    it "has health" do
      expect(hero.health).to eq(5)
    end

    describe "Printing Character Stats" do
      it "prints battle stats by default" do
        expect(hero.print_stats).to eq("<html>Damage: 10\nHealth: 5</html>")
      end

      it "prints skills" do
        hero.printer = SkillsStats.new
        expect(hero.print_stats).to eq("<html>Stealth\nDriving\nIntimidation\n</html>")
      end

      it "can use custom add hoc printerexp" do
        result = hero.print_stats do |damage, health, skills|
          "Damage: #{damage}\nNumber of skills: #{skills.size}"
        end
        expect(result).to eq("Damage: 10\nNumber of skills: 3")
      end
    end

    describe "skills" do
      it "has stealth" do
        expect(hero.skills).to include(:stealth)
      end

      it "has driving" do
        expect(hero.skills).to include(:driving)
      end

      it "has intimidation" do
        expect(hero.skills).to include(:intimidation)
      end
    end
  end
end