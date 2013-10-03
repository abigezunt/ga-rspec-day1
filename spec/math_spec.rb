require 'spec_helper'
require_relative '../lib/math'

describe "#square" do

	it "should have a method called square" do
		expect(method(:square))
	end

	it "should have one argument called x" do
		parameters = method(:square).parameters
		expect(parameters[0]).to include(:x)
		expect(parameters[0]).to include(:req)
		expect(parameters.length).to eq 1
	end

	it "should return the square of x" do
		expect(square(5)).to eq 25
		expect(square(-5)).to eq 25
		expect(square(1)).to eq 1
		expect(square(0)).to eq 0
		expect(square(-7)).to eq 49
		expect(square(0.5)).to eq 0.25
	end

	it "should return a number" do
		expect(square(8).class).to be Fixnum
		expect(square(1.1).class).to be Float
		expect(square(999993983298734799907).class).to be Bignum
	end

	it "should raise an error when parameters are not Fixnums" do
	  expect { square("cat") }.to raise_error(NoMethodError)
	  expect { square(true) }.to raise_error(NoMethodError)
	  expect { square(1, 2) }.to raise_error(ArgumentError)
	  expect { square([3, 5, 7]) }.to raise_error(NoMethodError)
  end

end