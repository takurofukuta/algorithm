# Palindrome with leading zeros
# 0を2つ以上つける場合を見落としており、意外に時間がかかったやつ

def comparison_of_largest_and_smallest_digit(num)
  digits = num.size
  # 数字の一番大きい桁と一桁目が同じ値か判定する（digits >= 2）
  while digits >= 2
    if num[0] != num[-1]
      ans = "No"
      break
    else
      ans = "Yes"
      num[0] = num[-1] = ""
      digits = num.size
    end
  end
  ans
end

num = gets.chomp

# 一桁の数字の時
if num.size == 1
  ans = "Yes"

  # 二桁以上の数字の時
else
  # ゾロ目判定
  doublet = 0 # 0:ゾロ目, 1:ゾロ目じゃない
  num.each_char { |e| doublet = 1 if e != num[0] }
  if doublet == 0
    ans = "Yes"

    # 1桁目が0の時
  elsif num[-1] == "0"
    zero_cnt = 0
    -1.downto(-num.size) do |i|
      break if num[i] != "0"
      zero_cnt += 1
    end
    num = "0" * zero_cnt + num
    ans = comparison_of_largest_and_smallest_digit(num)

    # 1桁目が0以外の時
  elsif num[-1] != "0"
    ans = comparison_of_largest_and_smallest_digit(num)
  end
end

puts ans
