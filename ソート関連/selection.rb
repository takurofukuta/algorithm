# 選択ソートは、数列の中から最小値を検索し、左端の数字と入れ替える。これを繰り返す。
# 操作済み・未操作の二つのグループに分けてソートを行う。
# 参考文献：「アルゴリズム図鑑 絵で見てわかる26のアルゴリズム」

def selection_sort(arr)
  n = arr.size
  i = 0
  (n - 1).times do |i|
    serch_range = arr.slice(i, n - i)
    min = serch_range[0]
    min_index = 0
    serch_range.map.with_index do |num, j|
      if num <= min
        min = num
        min_index = j
      end
    end
    arr[i], arr[min_index + i] = arr[min_index + i], arr[i]
  end  
  p arr
end

# input
arr = [5, 3, 7, 1, 0, 11]

# output
selection_sort(arr)

