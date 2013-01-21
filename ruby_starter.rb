def my_method(param_one) # Type of param_one is not fixed
  puts "Hello"
  puts param_one # It will put the result of param_one.to_s 
end

def method2(an_object)
  puts an_object.foobar # Call "foobar" on the object
end

class Fnord

  attr_accessor :happy
  # Also attr_reader and attr_writer

  def initialize(happy)
    @happy = happy
  end

  def foobar
    decide_foobar
  end

  def decide_foobar
    if @happy
      "foobar"
    else
      "sad"
    end
  end

end

# Inheritance
class MoreStuff < Fnord

  def foobar
    "overrides parent method"
  end

end

# Data types
a_symbol = :something
a_string = 'String'
a_string_with_interpolation = "String #{a_string}"
integer = 1234
float = 12.34
array = [1, 2, 3, 4]
array.each { |el| puts el }
hash = { one: 1, two: 2, three: 3, four: 4}
hash[:one]
hash[:five] = 5
hash[:six]


# Example calls

method2 Fnord.new(true)