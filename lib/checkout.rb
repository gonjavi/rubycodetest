require_relative 'classes.rb'

class Checkout
  attr_reader :prices
  attr_reader :AppleOrPear
  attr_reader :BananaOrPineapple
  attr_reader :Mangoes
  private :prices
  
  def initialize(prices)
    @prices = prices
    @appleorpear = AppleOrPear.new
    @bananaorpineapple = BananaOrPineapple.new
    @mangoes = Mangoes.new
  end

  def scan(item)
    basket << item.to_sym
  end

  def total
    total = 0
    basket.inject(Hash.new(0)) { |items, item| items[item] += 1; items }.each do |item, count|
      if item == :apple || item == :pear
       total += @appleorpear.discount(item, count, @prices)
      elsif item == :banana || item == :pineapple
        total += @bananaorpineapple.discount(item, count, @prices)
      elsif item == :mango
        total += @mangoes.discount(item, count, @prices) 
      else
        total += prices.fetch(item) * count
      end
    end
    total
  end

  private
  def basket
    @basket ||= Array.new
  end
end
