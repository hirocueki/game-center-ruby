require "io/console"


scene = [
  "人　　　　　家",
  "　人　　　　家",
  "　　人　　　家",
  "　　　人　　家",
  "　　　　人　家",
  "　　　　　人家",
  "　　　　　　人",
]

i=0
last = scene.length

view_thread = Thread.new do
  loop do
    if i == last then
      i = 0
    end
    print "\033[2K\r#{scene[i]}"
    i+=1

    sleep 0.3
  end
end

input_thread = Thread.new do
  while STDIN.getch != "q"; end
  puts
  view_thread.kill
  if i == last then
    print "😆😆😆😆😆"
  else
    print "😭😭😭😭😭"
  end
end



view_thread.join
input_thread.join

