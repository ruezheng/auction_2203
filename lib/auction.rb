class Auction
  attr_reader :items, :bids

  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def item_names
    @items.map do |item|
      item.name
    end
  end

  #  1. Return the list of unpopular items from an Auction: `Auction #unpopular_items`
  def unpopular_items
    @items.select do |item|
        # require "pry"; binding.pry
      if item.bids == 0
        return item
      end
    end
# [3] pry(#<Auction>)> if item.bids == 0
# [3] pry(#<Auction>)* return item
# [3] pry(#<Auction>)* end
# => nil
  end
end


#  1. Return the potential revenue from an Auction: `Auction #potential_revenue`
#
# Use TDD to update your classes to respond to the following interaction pattern.  Some notes:
# - `unpopular_items` are those items which have no bids.
# - `potential_revenue` is the total possible sale price of the items (the items highest bid)
