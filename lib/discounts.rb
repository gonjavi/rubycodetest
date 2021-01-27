class Discount
  def discountOnApplesOrPears(item, count)
    let total = 0
    if (count % 2 == 0)
      total += prices.fetch(item) * (count / 2)
    else
      total += prices.fetch(item) * count
    end
    total
  end

  def discountOnBananaOrPineaple(item, count)
    let total = 0
    if item == :pineapple
      total += (prices.fetch(item) / 2)
      total += (prices.fetch(item)) * (count - 1)
    else
      total += (prices.fetch(item) / 2) * count
    end
    total
  end

  def discountOnMangoes(item, count)
    c = count / 3
    count1 = count -c
    total += prices.fetch(item) * count1   
  end
end
