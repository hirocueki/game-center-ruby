lott = [
  "🎉ミュウツー（だいきち）",
  "😁カビゴン（ちゅうきち）",
  "😀ピカチュウ（きち）",
  "❌ゲンガー（きょう）",
  "☠️コダック（だいきょう）",
]

puts <<-EOT
----------------------------
  [ポケモンおみくじ]
  ひく(return) / おわる(n)
----------------------------
  EOT

while 1 do
  case gets.chomp
  when ""
    puts ["🎰", lott.sample].join
  when "n"
    puts "またねー！"
    exit 1
  end
end
