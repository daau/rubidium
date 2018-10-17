class Array
  def sum(start = 0)
    inject(start, &:+)
  end
  
  def blah
    puts "hey"
  end
end