# Intersection
# Amax <= x <= Bmin のxを探すだけ

n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

p b.min - a.max >= 0 ? ans = b.min - a.max + 1 : ans = 0
