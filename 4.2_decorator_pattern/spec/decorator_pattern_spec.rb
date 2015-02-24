require "decorator_pattern"

describe "Decorator Pattern" do

  describe Item do
    let(:common_item) { Item.new }

    context "magic masterpiece item" do
      let(:full_item) { Item.new true, true }
      
      it "six times more expensive than common item" do
        expect(full_item.price).to eq common_item.price * 6
      end

      it "has addition do descreption" do
        expect(full_item.description).to eq common_item.description + "Magic.Masterpiece."
      end
    end

    context "masterpiece item" do
      let(:masterpiece_item) { Item.new false, true }
      
      it "two times more expensive than common item" do
        expect(masterpiece_item.price).to eq common_item.price * 2
      end

      it "has addition do descreption" do
        expect(masterpiece_item.description).to eq common_item.description + "Masterpiece."
      end
    end

    context "magic item" do
      let(:magic_item) { Item.new true }
      
      it "three times more expensive than common item" do
        expect(magic_item.price).to eq common_item.price * 3
      end

      it "has addition do descreption" do
        expect(magic_item.description).to eq common_item.description + "Magic."
      end
    end
    
    context "common item" do

      it "has price" do
        expect(common_item.price).to eq 10
      end

      it "has description" do
        expect(common_item.description).to eq "Item."
      end

      it "can be used" do
        expect(common_item).to respond_to :use
      end

    end

  end

end