require './spec_helper'

describe Fibonnaci do

  before (:each) do
    @start = Fibonnaci.new
  end

  it 'Should return 10' do
    expect(@start.fibonacci(10)).to eq([1,2,3,5,8])
  end

  it 'should return a total of 234168' do
    @start.fibonacci(4000000)
    expect(@start.find_total(@start.even_array)).to eq(4613732)
  end

end
