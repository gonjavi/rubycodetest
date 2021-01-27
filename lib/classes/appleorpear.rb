class AppleOrPear  
  attr_reader :total
  def initialize
    @total = 0
  end

  def discount(item, count, prices)
    if (count % 2 == 0)
      @total += prices.fetch(item) * (count / 2)
    else
      @total += prices.fetch(item) * count
    end
    @total
  end
end