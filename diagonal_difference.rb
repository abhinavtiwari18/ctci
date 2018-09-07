
def diagonalDifference(arr)

  left_sum, right_sum, first = 0, 0, 0
  last = arr.size - 1
  arr.size.times do |index|
    left_sum += arr[index][index]
    right_sum += arr[first][last]
    first += 1
    last -= 1
  end
  (left_sum - right_sum).abs

end