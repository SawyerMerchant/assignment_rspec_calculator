require 'calculator'

describe Calculator do
  let(:calculator) {Calculator.new}

  describe '#add' do
    it 'should add two ints' do
      expect(calculator.add(1,2)).to eq(3)
    end

    it 'should add an int and float correctly' do
      expect(calculator.add(1,3.14)).to eq(4.140000000000001)
    end

    it 'should add two floats' do
      expect(calculator.add(2.0, 3.0)).to eq(5.0)
    end

    it 'should add a positive and negative int' do
      expect(calculator.add(-1, 3)).to eq(2)
    end

    it 'should add a negative and negative int' do
      expect(calculator.add(-1, -3)).to eq(-4)
    end
  end

  describe '#subtract' do
    it 'should subtract two ints' do
      expect(calculator.subtract(1,2)).to eq(-1)
    end

    it 'should subtract an int and float correctly' do
      expect(calculator.subtract(1,3.14)).to eq(-2.14)
    end

    it 'should subtract two floats' do
      expect(calculator.subtract(2.0, 3.0)).to eq(-1.0)
    end

    it 'should subtract a positive and negative int' do
      expect(calculator.subtract(-1, 3)).to eq(-4)
    end

    it 'should subtract a negative and negative int' do
      expect(calculator.subtract(-1, -3)).to eq(2)
    end
  end

  describe '#multiply' do
    it 'should multiply two ints' do
      expect(calculator.multiply(1,2)).to eq(2)
    end

    it 'should multiply an int and float correctly' do
      expect(calculator.multiply(1,3.14)).to eq(3.14)
    end

    it 'should multiply two floats' do
      expect(calculator.multiply(2.0, 3.0)).to eq(6.0)
    end

    it 'should multiply a positive and negative int' do
      expect(calculator.multiply(-1, 3)).to eq(-3)
    end

    it 'should multiply a negative and negative int' do
      expect(calculator.multiply(-1, -3)).to eq(3)
    end
  end

  describe '#divide' do

    it 'should divide two ints' do
      expect(calculator.divide(1,2)).to eq(0.5)
    end

    it 'should divide an int and float correctly' do
      expect(calculator.divide(3.14,1)).to eq(3.14)
    end

    it 'should divide two floats' do
      expect(calculator.divide(2.0, 3.0)).to eq(0.6666666666666666)
    end

    it 'should divide a positive and negative int' do
      expect(calculator.divide(-9, 3)).to eq(-3)
    end

    it 'should divide a negative and negative int' do
      expect(calculator.divide(-9, -3)).to eq(3)
    end

    it 'should raise argument error if denominator is zero' do
      expect {calculator.divide(3, 0)}.to raise_error(ArgumentError)
    end

    it 'should return zero when numerator is zero' do
      expect(calculator.divide(0, 3)).to eq(0)
    end
  end

  describe '#pow' do

    it 'should pow two ints' do
      expect(calculator.pow(4,2)).to eq(16)
    end

    it 'should pow an int and float correctly' do
      expect(calculator.pow(3.14,1)).to eq(3.14)
    end

    it 'should pow two floats' do
      expect(calculator.pow(2.0, 3.0)).to eq(8.0)
    end

    it 'should pow a positive and negative int' do
      expect(calculator.pow(-9, 3)).to eq(-729.0)
    end

    it 'should pow a negative and negative int' do
      expect(calculator.pow(-9, -3)).to eq(-0.0013717421124828531)
    end

    it 'should return 1 if raised to the power of 0' do
      expect(calculator.pow(5, 0)).to eq(1)
    end
  end

  describe '#sqrt' do

    it 'should raise error for negative argument' do
      expect {calculator.sqrt(-3)}.to raise_error
    end

    it 'should return int for round root' do
      expect(calculator.sqrt(25)).to eq(5)
    end

    it 'should return 2 digit decimal for non round roots' do
      expect(calculator.sqrt(5)).to eq(2.24)
    end
  end

  describe '#memory' do
    it 'should start with memory attribute value of nil' do
      expect(calculator.memory).to eq(nil)
    end
  end

  describe '#memory=' do

    it 'should set the value of the memory attribute' do
      value = 3
      calculator.memory = value
      expect(calculator.memory).to eq(value)
    end
  end

  context 'stringify' do
    it 'calculator instantiated with stringify true' do


  end

end