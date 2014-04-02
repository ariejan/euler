require 'multiple'

describe Multiple do
  it "susm 3 for n = 4" do
    expect(Multiple.sum(4)).to eql(3)
  end

  it "sums 8 for n = 6" do
    expect(Multiple.sum(6)).to eql(8)
  end

  it "sums 23 for n = 10" do
    expect(Multiple.sum(10)).to eql(23)
  end

  context "is has a solution" do
    it "#{Multiple.sum(1000)}" do
      expect(true).to be_true
    end
  end
end
