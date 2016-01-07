# Your code here
require_relative "../lib/calculator.rb"

describe "Calculator" do 
    
  let(:calc){ Calculator.new }

  describe "#add" do

    it "returns the sum of its positive integer arguments" do
      expect(calc.add(2,2)).to eq(4) 
    end

    it "returns the sum of its negative arguments" do
      expect(calc.add(-2,2)).to eq(0) 
    end

    it "returns the sum of its float arguments" do
      expect(calc.add(1.5, 2)).to eq(3.5)
    end

  end

  describe "#subtract" do

    it "returns the difference of its positive integer arguments" do
      expect(calc.subtract(2,2)).to eq(0) 
    end

    it "returns the difference of its negative arguments" do
      expect(calc.subtract(-2,2)).to eq(-4) 
    end

    it "returns the difference of its float arguments" do
      expect(calc.subtract(1.5, 2)).to eq(-0.5)
    end

  end

  describe "#multiply" do

    it "returns the product of its positive integer arguments" do
      expect(calc.multiply(2,2)).to eq(4) 
    end

    it "returns the product of its negative arguments" do
      expect(calc.multiply(-2,2)).to eq(-4) 
    end

    it "returns the product of its float arguments" do
      expect(calc.multiply(1.5, 2)).to eq(3)
    end

  end

  describe "#divide" do

    it "returns the quotient of its positive integer arguments" do
      expect(calc.divide(2,2)).to eq(1) 
    end

    it "returns the quotient of its negative arguments" do
      expect(calc.divide(-2,2)).to eq(-1) 
    end

    it "returns the quotient of its float arguments" do
      expect(calc.divide(1.5, 1)).to eq(1.5)
    end

    it "throws an argument error if the second argument is a 0" do
      expect{calc.divide(2,0)}.to raise_error(ArgumentError) 
    end

  end    

end