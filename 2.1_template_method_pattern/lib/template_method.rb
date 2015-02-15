class Hero
  attr_reader :damage, :abilities

  def initialize occupation = nil
    initialize_stats

    @damage = demage_rating
    @abilities = occupation_abilities
  end

  def demage_rating
    10
  end

  def occupation_abilities
    []
  end

  def attack
    "Attacked dealing #{@damage} damage"
  end

  def initialize_stats
    
  end
end

class Mage < Hero
  def demage_rating
    7
  end

  def occupation_abilities
    [:magic_arrow]
  end
end

class Warrior < Hero
  def demage_rating
    15
  end

  def occupation_abilities
    [:strike]
  end
end