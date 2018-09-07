def compareTriplets(a, b)
  return false if a.length != b.length
  a_score, b_score = 0, 0
  a.length.times do |index|
    if a[index] > b[index]
      a_score += 1
    end
    if b[index] > a[index]
      b_score += 1
    end
  end
  [a_score, b_score]
end