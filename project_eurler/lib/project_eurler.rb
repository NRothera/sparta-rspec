class Multiples_3_5

  attr_accessor :all_multiples

  def initialize
    @all_multiples = []
  end

  def multiples(num, divising)
    (num%divising).zero?
  end

  def push_array(start,finish)
    for num in start..finish
      if multiples(num, 3) || multiples(num, 5)
        @all_multiples.push(num)
      end
    end
    @all_multiples
  end

  def find_total(all)
    sum = 0
    all.each {|x| sum+=x}
    sum
  end
end
