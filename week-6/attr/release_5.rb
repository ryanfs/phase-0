# Release 4:

# refactor this code to move method assignments to attr_ attributes. Like we did with age. Let's pare down the superfluous code.

# Your Code Here:

class Profile
# first let's finish refactoring this code
# note that there is a way to add all of the variables like :age on one line, how would we do that?
  attr_accessor :age, :name, :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end

  # def what_is_name
  #   @name
  # end

  # def change_my_name=(new_name)
  #   @name = new_name
  # end

  # def what_is_occupation
  #   @occupation
  # end

  # def change_my_occupation=(new_occupation)
  #   @occupation = new_occupation
  # end


end

# profile = Profile.new
# puts profile.age
# profile.age = 30
# puts profile.assignments



class NameData

  attr_accessor :name

  def initialize
    @name = 'Ryan'
  end
  def print_name
    "#{name}"
  end
end

class Greetings
  def hello
    namedata = NameData.new
    name = namedata.print_name
    puts "Hello #{name}! How wonderful to see you today."
  end
end


greet = Greetings.new
greet.hello # puts "Hello Student! How wonderful to see you today."

# Reflect

# What is a reader method?
## Allows you to access the value of a variable

# What is a writer method?
## Allows you to change the value of a variable

# What do the attr methods do for you?
## Allows you to read and write the value of a variable

# Should you always use an accessor to cover your bases? Why or why not?
## Not necessarily because you don't want to always allow variables to be changed from other methods

# What is confusing to you about these methods?
## not much, it's all straight forward.