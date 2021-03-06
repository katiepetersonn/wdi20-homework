class Roman

  def initialize
  @roman_map = {

  1000 => 'M',
  900 => 'CM',
  500 => 'D',
  400 => 'CD',
  100 => 'C',
  90 => 'XC',
  50 => 'L',
  40 => 'XL',
  10 => 'X',
  9 => 'IX',
  5 => 'V',
  4 => 'IV',
  1 => 'I'
  }
  end

  def to_roman( number )

    @number = ""

    @roman_map.each do |key,value|

      # puts "EACH: #{ key } => #{ value }, number: #{ number }"

      while number >= key
        result += value
        number -= key
      end
    end  #each
    result
  end
end

r = Roman.new

puts r.to_roman 1990
