require "./enumerables"

describe Enumerable do
  describe "#my_each" do
    it "puts every item in the array" do
      array = [1, 2, 3, 4]
      expect(array.my_each { |item| puts item }).to eql([1, 2, 3, 4])
    end
  end

  describe "#my_each_with_index" do
    it "puts every item with the index" do
      array = ["jordy", "addis", "hanna"]
      expect(array.my_each_with_index { |item, index| puts "#{index + 1}. #{item}" }).to eql(["jordy", "addis", "hanna"])
    end
  end

  describe "#my_select" do
    it "puts selected item greater than two" do
      array = [1, 2, 3]
      expect(array.my_select { |item| item > 2 }).to eql([3])
    end
  end

  describe "#my_all?" do
    it "return false if not all items are greater than 3"do
    array = [1, 2, 3]
    expect(array.my_all? { |item| item > 3 }).to eql(false)
  end

  it "returns true if all items are greater than 0"do
  array = [1, 2, 3]
  expect(array.my_all? { |item| item > 0 }).to eql(true)
  end

  it "returns true if all items are Numerics"do
  array = [1, 2, 3]
  expect(array.my_all?(Numeric)).to eql(true)
  end

  it "returns true if all items contain the letter 'd'"do
  array = ["jordy", "addis", "hannad"]
  expect(array.my_all?(/d/)).to eql(true)
  end
  end

end
