class Mangoes
  attr_reader :total
  def initialize
    @total = 0
  end
  def discount(item, count, prices)
    c = count / 3
    count1 = count -c
    @total += prices.fetch(item) * count1   
  end
end