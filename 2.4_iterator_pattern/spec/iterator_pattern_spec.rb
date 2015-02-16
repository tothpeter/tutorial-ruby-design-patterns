require "iterator_pattern"

describe "Iterator Pattern" do
  describe Inventory do
    let(:inventory) { Inventory.new }

    before :each do
      item1 = Item.new
      item1.cost = 20

      item2 = Item.new
      item2.cost = 10

      inventory.add item1
      inventory.add item2
    end

    it "can be iterated through items to get total cost" do
      # External itarator
      iterator = InventoryIterator.new inventory
      result = 0
      while iterator.has_next?
        result += iterator.next.cost
      end
      expect(result).to eq(30)
    end
    it "adds items to its collection" do
      expect(inventory.items.size).to eq(2)
    end
  end

  describe Item do
    let(:item) { Item.new }
    it "has cost" do
      expect(item.cost).to eq(0)
    end
  end
end