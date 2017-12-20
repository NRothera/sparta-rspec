require 'spec_helper'

describe Multiples_3_5 do

  before(:each) do
    @multiple = Multiples_3_5.new
  end

  it 'should return [3,5,6,9,10]' do
    expect(@multiple.push_array(1,10)).to eq([3,5,6,9,10])
  end

  it 'should return a total of 8' do
    @multiple.push_array(1,5)
    expect(@multiple.find_total(@multiple.all_multiples)).to eq(8)
  end

  it 'should be an array' do
    expect(@multiple.all_multiples).to be_kind_of(Array)
  end

  it 'should return a total of 234168' do
    @multiple.push_array(1,1000)
    expect(@multiple.find_total(@multiple.all_multiples)).to eq(234168)
  end
end
