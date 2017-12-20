require 'spec_helper'

describe Calcengine do

  before(:all) do
    @calc = Calcengine.new
  end

  it 'should correctly add two numbers' do

    expect(@calc.add(1,1)).to eql(2)

  end

  it 'should correctly subtract two numbers' do

    expect(@calc.subtract(2,1)).to eql(1)
  end

  it 'should correctly multiple two numbers' do

    expect(@calc.multiply(2,2)).to eql(4)
  end

  it 'should correctly divide two numbers' do

    expect(@calc.divide(8,4)).to eql(2)
  end
end



#rspec init to make spec files and folders
