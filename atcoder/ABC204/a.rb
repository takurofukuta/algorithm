# Rock-paper-scissors
# 数字の入力はとりあえず配列にしがちだったが、文字列で扱うとコンパクトになった（文量的に）。
# delete(x + y)が推し

x, y = gets.split

if x == y
  puts z = x
else
  puts z = "012".delete(x + y)
end
