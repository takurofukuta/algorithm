###### Fizz Buzz問題
n = gets.to_i

n.times do |i|
  if i % 15 == 0
    puts "FizzBuzz"
  elsif i % 3 == 0
    puts "Fizz"
  elsif i % 5 == 0
    puts "Buzz"
  else
    puts i
  end
end

# 模範解答
#①
def fizz_buzz(n)
  ret = "#{["Fizz"][n % 3]}#{["Buzz"][n % 5]}"
  ret.empty? ? n.to_s : ret
end

puts (1..100).collect { |n| fizz_buzz(n) }

# "#{["Fizz"][n % 3]}#{["Buzz"][n % 5]}"って何？
# →["Fizz"]という配列のインデックス[0]がFizz
# つまり、n % 3 = 0のとき、["Fizz"]という文字列が入る。（それ以外はnil。#{nil}は何も入らない。）

# ②
(1..100).each do |n|
  ret = "#{["Fizz"][n % 3]}#{["Buzz"][n % 5]}"
  puts ret.empty? ? n : ret
end

# ③
puts (1..100).map { |n|
  ret = "#{["Fizz"][n % 3]}#{["Buzz"][n % 5]}"
  ret.empty? ? n : ret
}

# empty?メソッドって何？
# →真偽判定メソッドのひとつ（他にはnil? blank? present?がある。）
# 空配列・空メソッド・空文字""のときtrue

# collectメソッド:
# →オブジェクト（配列や範囲オブジェクト）の各要素に対して{}内の処理を行い、その結果を取得する。
# →forやdo、timesなどの繰り返しを用いないで済む.

# eachメソッド：
# →主に配列の要素分の処理を繰り返し行いたい場合に使用するメソッドです。
# 配列を指定してeachメソッドを実行すると、配列のインデックス番号0から順番に繰り返し処理が実行されます。

# collectとmapの違いは?
# →collect = map。なので、今後はmapを用いることとする。

# eachとmapの違いは？
# →eachはレシーバーの値を返す→ [x..y].each ~ の [x..y]
# mapはブロックの戻り値を返す→ [x..y].map {|~~| ~~} の |~~|

# do~end(ブロック構文)→{}でも代用可。処理が複数行に渡る場合はdo~end、一行で済む場合は{}を用いるのが通例。
