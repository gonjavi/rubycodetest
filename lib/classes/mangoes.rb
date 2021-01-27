class Mangoes
  def discount(item, count)
    c = count / 3
    count1 = count -c
    total += prices.fetch(item) * count1   
  end
end