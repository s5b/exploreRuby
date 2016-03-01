class BlockAssignment
  def create_fixed_arithmetic(factor, &block)
    @factor = factor
    @block = block
  end
  def do_fixed_arithmetic(subject)
    @block.call(@factor, subject)
  end
end


# Try it out.

ba = BlockAssignment.new

ba.create_fixed_arithmetic(7) { |f, s| f * s }

puts ba.do_fixed_arithmetic(9)