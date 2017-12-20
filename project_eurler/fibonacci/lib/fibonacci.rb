class Fibonnaci

  attr_accessor :even_array

  def initialize
    @even_array = [1,2]
  end

  def fibonacci(final)
    upto = final
    while @even_array[-2] + @even_array[-1] < final
      @even_array << @even_array[-2] + @even_array[-1]
    end
  end

  def find_total(all)
    sum = 0
    all.each do |x|
      if x % 2 == 0
        sum += x
      end
    end
    sum
  end
end
