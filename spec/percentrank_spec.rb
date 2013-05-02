require 'rspec'
require 'percentrank'

describe Percentrank do
  describe "Range#percentrank" do
    it "within range" do
      (100..200).percentrank(120).should be_within(0.001).of(0.2)
      (100..200).percentrank(140).should be_within(0.001).of(0.4)
    end
    it "over range" do
      (100..200).percentrank(220).should be_within(0.001).of(1.2)
      (100..200).percentrank(350).should be_within(0.001).of(2.5)
    end
    it "under range" do
      (100..200).percentrank(20).should be_within(0.001).of(-0.8)
      (100..200).percentrank(0).should be_within(0.001).of(-1.0)
    end
  end

  describe "Array#percentrank" do
    it "within range" do
      [100, 130, 200, 185].percentrank(120).should be_within(0.001).of(0.2)
      [100, 130, 200, 185].percentrank(140).should be_within(0.001).of(0.4)
    end
    it "over range" do
      [100, 130, 200, 185].percentrank(220).should be_within(0.001).of(1.2)
      [100, 130, 200, 185].percentrank(350).should be_within(0.001).of(2.5)
    end
    it "under range" do
      [100, 130, 200, 185].percentrank(20).should be_within(0.001).of(-0.8)
      [100, 130, 200, 185].percentrank(0).should be_within(0.001).of(-1.0)
    end
  end
end

