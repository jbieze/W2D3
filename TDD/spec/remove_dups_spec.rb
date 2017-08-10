require 'rspec'
require 'remove_dups'


describe "#my_uniq" do
  subject(:array) { [1, 2, 1, 3, 3] }

  it "returns an array" do
    expect(array.my_uniq).to be_an(Array)
  end

  it "removes duplicate elements" do
    # expect(array.my_uniq).to eq(array.uniq)
    array.each do |el|
      expect(array.uniq.count(el)).to eq(1)
    end
  end
end
