

proc1 = -> a, *b, &block do
  puts "a = #{a.inspect}"
  puts "b = #{b.inspect}"
  block.call
end



proc1.call(1, 2, 3, 4, 5) { puts 'In the block.' }