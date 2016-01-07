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

  describe "#pow" do

    it "returns the power of its positive integer arguments" do
      expect(calc.pow(2,2)).to eq(4) 
    end

    it "returns the power of its negative arguments" do
      expect(calc.pow(-2,2)).to eq(4) 
    end

    it "returns the power of its float arguments" do
      expect(calc.pow(1.5, 1)).to eq(1.5)
    end

    it "returns the power of number to 0" do
      expect(calc.pow(2,0)).to eq(1)
    end

  end  

  describe "#sqrt" do

    it "returns the square root of its positive integer arguments" do
      expect(calc.sqrt(9)).to eq(3) 
    end

    it "returns the square root of its negative arguments" do
      expect{calc.sqrt(-2)}.to raise_error(ArgumentError) 
    end

    it "returns irrational square root rounded to two decimals" do
      expect(calc.sqrt(5)).to eq(2.24)
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

  describe "#memory=" do

    before "setting everything up" do
      calc.memory = "temp mem"
    end

    it "it sets the instance variable" do
      expect(calc.memory).to eq("temp mem")
    end

    it "it overwrites the instance variable memory" do
      expect(calc.memory = "current mem").to eq("current mem")
    end

  end

  describe "#memory" do

    it "initializes instance variable as nil" do
      expect(calc.memory).to eq(nil)
    end

  end

  describe "#stringify" do
    let(:calc_string){ Calculator.new(true) }

    describe "#add" do

      it "returns the sum as a string" do
        expect(calc_string.add(2,2)).to eq("4")
      end

    end

    describe "#subtract" do

      it "returns the difference as a string" do
        expect(calc_string.subtract(2,2)).to eq("0")
      end

    end 

    describe "#multiply" do

      it "returns the product as a string" do
        expect(calc_string.multiply(2,2)).to eq("4")
      end

    end

    describe "#divide" do

      it "returns the quotient as a string" do
        expect(calc_string.divide(2,2)).to eq("1")
      end

    end

    describe "#pow" do

      it "returns the power as a string" do
        expect(calc_string.pow(2,2)).to eq("4.0")
      end

    end

    describe "#sqrt" do

      it "returns the square root as a string" do
        expect(calc_string.sqrt(9)).to eq("3")
      end

    end
  end
end