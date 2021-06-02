# 累積和
sum[i] = sum[i - 1] + A[i]

# 配列の特定区間の総和 → 累積和の差で算出
A[l]+...+A[u] = (A[0]+...A[u]) - (A[0]+...A[l-1]) = S[u+1]-S[l]

# しゃくとり法 → 配列の頭と尻を前後させる。

# 数列 A の要素数 N と値 M ,その要素 A_1, A_2 ... A_N が与えられます。
# 要素の和が M 以上となるような A の部分列の最短の長さを求めてください。
# そのような部分列が存在しない場合は −１ を出力してください。
# なお、数列の部分列とは、数列の連続した 1 つ以上の要素を取り出して作ることができる数列のことです。

input = gets.chomp.split(" ").map(&:to_i)
n = input[0]
m = input[1]
nums = gets.chomp.split(" ").map(&:to_i)

# 配列の特定範囲(i ~ i+j)の和
i = 0
j = 1

syakutori_lengths = []

while i + j <= n
    syakutori = nums.slice(i, j)
    sum = syakutori.inject(:+)
    if sum >= m
        syakutori_lengths << syakutori.length
        break if n == 1 # nが1のときはここで脱出
        i += 1
        j -= 1 # 尺取り虫のしっぽを短くしたら、jを-1するのを忘れない
    else
        break if n == 1 # nが1のときはここで脱出
        j += 1
    end
end

p syakutori_lengths.empty? ? -1 : syakutori_lengths.min



# 数列 A の要素数 N と値 M、その要素 A_1, A_2 ... A_N が与えられます。
# 要素の和が M を超えないような A の部分列の最大の長さを求めてください。
# なお、数列の部分列とは、数列の連続した 1 つ以上の要素を取り出して作ることができる数列のことです。

input = gets.chomp.split(" ").map(&:to_i)
n = input[0]
m = input[1]
nums = gets.chomp.split(" ").map(&:to_i)

# 配列の特定範囲(i ~ i+j)の和
i = 0
j = 1

syakutori_lengths = []

while i + j <= n
    syakutori = nums.slice(i, j)
    sum = syakutori.inject(:+)
    if sum <= m
        syakutori_lengths << syakutori.length
        break if n == 1 
        j += 1
    else
        break if n == 1 
        i += 1
        j -= 1 # 尺取り虫のしっぽを短くしたら、jを-1するのを忘れない
    end
end

p syakutori_lengths.empty? ? 0 : syakutori_lengths.max


# imos法 → 配列において、さまざまな特定範囲の足し算を繰り返し行った結果を返す場合

# 数列 A の要素数 N とクエリの数 M ,要素 A_1, A_2 ... A_N が与えられます。
# 続けて、クエリに用いる数 l_i, u_i, a_i が与えられます。
# 各クエリについて次の処理を行ってください。
# ・ 要素番号が、l_i 以上、u_i 以下の全ての A の要素に、a_i を足す。
# 全てのクエリについて処理を終えた後の A の各要素を出力してください。

input = gets.chomp.split(" ").map(&:to_i)
n = input[0]
m = input[1]
nums = gets.chomp.split(" ").map(&:to_i)

adds = Array.new(n, 0)

m.times do
    input = gets.chomp.split(" ").map(&:to_i)
    l = input[0]
    u = input[1]
    a = input[2]
    adds[l-1] += a
    adds[u] -= a if u < n
end

sum = 0

adds.each.with_index do |add, i| 
    sum += add
    p ans = nums[i] + sum
end