def prime?(n)
  return false if n == 2
  return true if n == 3
  return false if (n % 2).zero?
  3.step(Math.sqrt(n).to_i, 2) { |i| return false if (n % i).zero? }
  true
end

n = ARGV[0].to_i

if prime?(n)
  puts "#{n}は素数です"
else
  puts "#{n}は素数ではありません"
end

