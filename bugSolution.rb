```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    #Check for the data type before assigning a value
    unless new_value.is_a?(Numeric)
        raise TypeError, "Expected Numeric value, but got #{new_value.class}"
    end
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value  # Output: 10

my_object.value = 20
puts my_object.value  # Output: 20

begin
  my_object.value = 'hello'
rescue TypeError => e
  puts e.message # Output: Expected Numeric value, but got String
end
```