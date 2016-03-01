class ProcExample
  def pass_in_block(&action)
    @store_proc = action
  end
  def use_proc(parameter)
    @store_proc.call(parameter)
  end
end


eg = ProcExample.new
eg.pass_in_block { |param| puts "The parameter is #{param}." }
eg.use_proc(99)
