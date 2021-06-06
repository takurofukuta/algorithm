n = gets.to_i
s = gets.chomp.split("")
q = gets.to_i
inversion = 0 # 0: 反転なし, 1:反転あり

q.times do
	input = gets.split.map(&:to_i)
  	t = input[0]
	  a = input[1]
    b = input[2]
  	if t == 1
    	if inversion == 0
	    	s[a - 1], s[b - 1] = s[b - 1], s[a - 1]
     	else
  			s[a + n - 1], s[b - n - 1] = s[b - n - 1], s[a + n - 1]
      end
    elsif t == 2
    	inversion == 0 ? inversion = 1 : inversion = 0
    end
end

if inversion == 0
	puts s.join
else
  tmp = s.each_slice(n).to_a
  tmp[0], tmp[1] = tmp[1], tmp[0]
  s = tmp.flatten
  puts s.join
end

