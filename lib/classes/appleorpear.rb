class AppleOrPear
  def discount(item, count)
    let total = 0
    if (count % 2 == 0)
      total += prices.fetch(item) * (count / 2)
    else
      total += prices.fetch(item) * count
    end
    total
  end
end