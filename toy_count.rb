# https://www.hackerrank.com/challenges/mark-and-toys/problem

def maximumToys(prices, k)
  sorted_price = prices.sort
  count = 0
  sorted_price.each do |price|
    k = k - price
    if k >= 0
      count += 1
    else
      break
    end
  end
  print count.to_s
end