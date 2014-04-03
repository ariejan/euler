require 'prime_factor'

describe PrimeFactor do
  it "finds the prime factors for 3" do
    expect(PrimeFactor.new(3).calc).to eql([3])
  end

  it "finds the prime factors for 6" do
    expect(PrimeFactor.new(6).calc).to eql([2,3])
  end

  it "finds the prime factors for 12" do
    expect(PrimeFactor.new(12).calc).to eql([2,2,3])
  end

  context "is has a solution" do
    it "#{PrimeFactor.new(600851475143).calc}" do
      expect(true).to be_true
    end
  end
end
