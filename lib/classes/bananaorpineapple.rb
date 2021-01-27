class BananaOrPineapple
  def discount(item, count)
    let total = 0
    if item == :pineapple
      total += (prices.fetch(item) / 2)
      total += (prices.fetch(item)) * (count - 1)
    else
      total += (prices.fetch(item) / 2) * count
    end
    total
  end
end