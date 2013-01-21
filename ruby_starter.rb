def my_method(param_one) # Type of param_one is not fixed
  puts "Hello"
  puts param_one # It will put the result of param_one.to_s 
end

def method2(an_object)
  puts an_object.foobar # Call "foobar" on the object
end

class Fnord

  def foobar
    decide_foobar
  end

  def decide_foobar
    if 1 != 2
      "foobar"
    else
      "Hellolo"
    end
  end

end

# Example calls

method2 Fnord.new