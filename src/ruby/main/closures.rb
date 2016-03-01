def n_times(thing)
  -> n { n * thing }
end


p1 = n_times(23)

puts p1.call(3)
puts p1.call(4)
puts p1.call('Hello ')
puts p1.call('Oi ')