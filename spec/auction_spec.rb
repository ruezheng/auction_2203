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
  end
end
