# If we list all the natural numbers below 10
# that are multiples of 3 or 5, we get 3, 5, 6
# and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5
# below 1000.
class Multiple
  def self.sum(max)
    1.upto(max - 1).select do |i|
      is_multiple?(i)
    end.inject(:+)
  end

  def self.is_multiple?(n)
    n.remainder(3) == 0 || n.remainder(5) == 0
  end
end
