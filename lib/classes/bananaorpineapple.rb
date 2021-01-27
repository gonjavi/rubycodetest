class BananaOrPineapple  
  def initialize
    @total = 0
  end

  def discount(item, count, prices)
    if item == :pineapple
      @total += (prices.fetch(item) / 2)
      @total += (prices.fetch(item)) * (count - 1)
    else
      @total += (prices.fetch(item) / 2) * count
    end
    @total
  end
end