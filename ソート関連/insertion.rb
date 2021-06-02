# 挿入ソートは、左側の数字と大小を比較し、小さければ左側の数字と入れ替える。これを繰り返す。
# 計算時間はO(n^2)

def insertion_sort(arr)
  sort_arr = []
  sort_arr << arr[0]
  arr.shift

  until arr.empty?
    n = sort_arr.size
    n.times do |i|
      if sort_arr.first > arr[0]
        sort_arr.unshift(arr[0])
        break
      elsif sort_arr[i] <= arr[0] && arr[0] <= sort_arr[i + 1]
        sort_arr.insert(i + 1, arr[0])
        break
      elsif sort_arr.last < arr[0]
        sort_arr.push(arr[0])
        break
      end
    end

    arr.shift
  
  end
  
  p sort_arr

end

arr = [5, 3, 4, 7, 2, 8, 6, 9, 1]
insertion_sort(arr)