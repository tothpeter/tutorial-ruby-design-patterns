class Quest
  attr_accessor :difficulty, :hero

  def initialize difficulty
    @difficulty = difficulty
    @hero = nil
  end

  def finish
    @hero.experience += calculate_experience
  end

  def calculate_experience
    @difficulty * 50 / @hero.level
  end
end

class Hero
  attr_accessor :level, :experience, :quests

  def initialize
    @level = 1
    @experience = 0
    @quests = []
  end

  def take_quest quest
    @quests << (quest.hero = self)
  end

  def finish_quest quest
    quest.finish
    @quests.delete quest
  end
end