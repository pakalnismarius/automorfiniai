class Automorphic

attr_accessor :number, :power

  def initialize(number, power = 2)
    @number = number
    @power = power
  end

  def is_automorphic?
    automorphic = true
    num_arr = @number.to_s.split("").reverse
    pow_arr = (@number.to_i ** @power).to_s.split("").reverse
    num_arr.each_index { |x| automorphic = false if num_arr[x] != pow_arr[x]}
    return automorphic
  end

end

a = Automorphic.new(5)
puts a.is_automorphic?
