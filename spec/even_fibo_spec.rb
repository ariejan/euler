require 'even_fibo'

describe EvenFibo do
  it "sum(90) equals 44" do
    expected = 2 + 8 + 34
    expect(EvenFibo.sum(90)).to eql(expected)
  end

  context "is has a solution" do
    it "#{EvenFibo.sum(4_000_000)}" do
      expect(true).to be_true
    end
  end
end
