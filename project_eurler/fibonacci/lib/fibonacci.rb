class Fibonnaci

  attr_accessor :even_array

  def initialize
    @even_array = []
  end

  def fibonacci(final)
    a    = [1,2]
    upto = final

    while a[-2] + a[-1] < final
      a << a[-2] + a[-1]
    end

    @even_array = a
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
