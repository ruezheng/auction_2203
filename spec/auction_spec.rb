require './lib/item'
require './lib/auction'
require './lib/attendee'

describe Auction do
  let(:auction) { Auction.new }
  let(:item1) { Item.new('Chalkware Piggy Bank') }
  let(:item2) { Item.new('Bamboo Picture Frame') }
  let(:attendee) { Attendee.new({name: 'Megan', budget: '$50'}) }

  it "exists" do
    expect(auction).to be_a Auction
  end

  it "has attributes" do
    expect(auction.items).to eq []
    expect(auction.bids).to eq({})
  end

  it "can add items" do
    auction.add_item(item1)
    auction.add_item(item2)

    expect(auction.items).to eq [item1, item2]
  end

  it "lists item names" do
    auction.add_item(item1)
    auction.add_item(item2)

    expect(auction.item_names).to eq ["Chalkware Piggy Bank", "Bamboo Picture Frame"]
  end

  let(:item1) { Item.new('Chalkware Piggy Bank') }
  let(:item2) { Item.new('Bamboo Picture Frame') }
  let(:item3) { Item.new('Homemade Chocolate Chip Cookies') }
  let(:item4) { Item.new('2 Days Dogsitting') }
  let(:item5) { Item.new('Forever Stamps') }
  let(:attendee1) { Attendee.new({name: 'Megan', budget: '$50'}) }
  let(:attendee2) { Attendee.new({name: 'Bob', budget: '$75'}) }
  let(:attendee3) { Attendee.new({name: 'Mike', budget: '$100'}) }
  let(:auction) { Auction.new }

  xit "Attendees can bid on items" do
    auction.add_item(item1)
    auction.add_item(item2)
    auction.add_item(item3)
    auction.add_item(item4)
    auction.add_item(item5)

    expected = {
      attendee2 => 20,
      attendee1 => 22
    }

    expect(item1.bids).to eq(expected)
  end
end
