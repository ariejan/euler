require 'prime'

class PrimeFactor

  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def calc
    find_primes_for(number)
  end

  private

  def find_primes_for(n)
    primes = []

    if Prime.prime?(n)
      primes << n
    else
      Prime.each do |p|
        value, remainder = n.divmod(p)

        if remainder == 0
          primes << p
          primes << find_primes_for(value)
          break
        end
      end
    end

    primes.flatten
  end
end
