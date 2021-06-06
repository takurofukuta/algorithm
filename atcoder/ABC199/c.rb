# IPFL
# 下記3パターンを想定できるかがキモ
# 【1】Ai も Bi も前半（0〜N-1）に含まれる
# 【2】Ai も Bi も後半（N〜2N-1）に含まれる
# 【3】Ai は前半， Bi は後半に含まれる

# 標準入力による値のインプット
n = gets.to_i
s = gets.chomp
q = gets.to_i
inversion = 0 # 0: 前半 + 後半, 1: 後半 + 前半
q.times do
  input = gets.split.map(&:to_i)
  t = input[0]
  a = input[1]
  b = input[2]
  if t == 1
    if inversion == 0
      s[a - 1], s[b - 1] = s[b - 1], s[a - 1]
    else
      if b <= n
        s[a + n - 1], s[b + n - 1] = s[b + n - 1], s[a + n - 1]
      elsif n < a
        s[a - n - 1], s[b - n - 1] = s[b - n - 1], s[a - n - 1]
      elsif a <= n && n < b
        s[a + n - 1], s[b - n - 1] = s[b - n - 1], s[a + n - 1]
      end
    end
  elsif t == 2
    inversion = (inversion + 1) % 2
  end
end

puts inversion == 0 ? s : s[n..(2 * n - 1)] + s[0..(n - 1)]
