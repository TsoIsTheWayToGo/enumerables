class Array
  def my_select(&prc)
    selected =[]
    self.length.times do |i|
      if prc.call(self[i])
        selected << self[i]
      end
    end
    selected
  end
end

p [1,2,3,4,5,6].my_select {|el| el.odd?}
