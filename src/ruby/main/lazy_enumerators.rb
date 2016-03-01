
def Integer.all
  Enumerator.new do |yielder, n:0|
    loop { yielder.yield(n += 1) }
  end.lazy
end

modicom = -> i { (i % 17).zero? }

palindrome = -> i do
  natural = i.to_s
  natural == natural.reverse
end

p Integer.all.select(&modicom).select(&palindrome).first(30)