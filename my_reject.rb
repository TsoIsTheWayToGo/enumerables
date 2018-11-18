class Array
  def my_reject(&prc)
    rejected = []
    self.length.times do |i|
      rejected << self[i] unless prc.call(self[i])
    end
    rejected
  end
end

a = [1, 2, 3]
p a.my_reject { |num| num > 1 } # => [1]
p a.my_reject { |num| num == 4 } # => [1, 2, 3]
