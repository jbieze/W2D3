class Array

  def my_uniq
    uniq_array = []
    count = Hash.new(0)
    self.each do |el|
      count[el] += 1
    end
    uniq_array << count.keys
  end
end
