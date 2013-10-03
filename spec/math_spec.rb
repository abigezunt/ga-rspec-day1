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
		expect(square 5).to eq 25
		expect(square 1).to eq 1
		expect(square 0).to eq 0
		expect(square -7).to eq 49
	end

end