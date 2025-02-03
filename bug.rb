```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value  # Output: 10

my_object.value = 20
puts my_object.value  # Output: 20

#Unexpected behavior
my_object.value = 'hello'
puts my_object.value # Output: hello 
#This is not a type error because Ruby is dynamically typed, but can lead to unexpected behavior if not handled carefully
```