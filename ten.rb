# 合計で10になる数を入力していくゲーム
require 'pry'

puts <<-EOT
----------------------------
  [あわせて「10」にせよ]
  数字キー / おわる(n)
----------------------------
  EOT

while 1 do
  num = rand(1..10)
  puts num

  answer = 10-num
  input = gets.chomp

  case input
  when "n"
    puts "またねー！"
    exit 1
  end

  puts (input.to_i == answer ? "せいかい！" : "ちがうよ") + "おわる(n)"
  # binding.pry
end
