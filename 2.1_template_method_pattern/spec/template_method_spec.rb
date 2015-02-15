require "template_method"

describe "Template Method Pattern" do
  let(:hero) { Hero.new }

  it "has default demage rating of 10" do
    expect(hero.damage).to eq(10)
  end
  it "can attack" do
    expect(hero.attack).to eq("Attacked dealing 10 damage")
  end
end