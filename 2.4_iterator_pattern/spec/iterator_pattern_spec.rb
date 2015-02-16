require "iterator_pattern"

describe "Iterator Pattern" do
  describe Inventory do
    
  end

  describe Item do
    let(:item) { Item.new }
    it "has cost" do
      expect(item.cost).to eq(0)
    end
  end
end