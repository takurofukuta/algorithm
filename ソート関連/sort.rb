arr = [4, 1, 3, 5, 2]
# arr = [5, 4, 3, 2, 1]
#  arr = [1, 2, 3, 4, 5]
n = arr.length

# 昇順に並び替え
# * 無駄が多いが簡単なやりかた
# (1..n - 1).each do |j| # * 一番大きい値を一番右に移動させる回数
#   (1..n - j).each do |i| # * 一番大きい値未満の要素で繰り返し
#     arr[i - 1], arr[i] = arr[i], arr[i - 1] if arr[i - 1] > arr[i]
#     p arr
#   end
# end

# * 無駄がないやりかた
aligned_arr = []
unaligned_arr = arr

n - 1.times do |i|
  if aligned_arr.empty?
    aligned_arr << unaligned_arr[0]
    unaligned_arr.shift
  end

  i + 1.times do |j|
    if aligned_arr[j] > unaligned_arr[0]
      aligned_arr.inser
      (i, unaligned_arr[0])
    else
      aligned_arr.insert(i + 1, unaligned_arr[0])
    end
  end
  unaligned_arr.shift
  p aligned_arr + unaligned_arr
end

# 降順に並び替え
# * 無駄が多いが簡単なやりかた
# (1..n - 1).each do |j| # * 一番小さい値を一番右に移動させる回数
#   (1..n - j).each do |i| # * 一番小さい値より大きい要素で繰り返し
#     arr[i - 1], arr[i] = arr[i], arr[i - 1] if arr[i - 1] < arr[i]
#     p arr
#   end
# end
