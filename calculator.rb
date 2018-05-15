
global_number = 0.0

# Add the number with the global number
def add(input_number)
  global_ number += input_number
end

# Subtract number from  the global number
def subtract(input_number)
  global_ number -= input_number
end

# Multiply the number with the global number
def multiply(input_number)
  global_ number *= input_number
end

# Divide  the global number with the number
def divide(input_number)
  global_ number /= input_number
end

#Reading users command
input_command_from_user = gets.chomp.to_s
split_command_array = input_command_from_user.split(" ")
puts input_command_from_user
puts split_command_array
# Checking for command without any operand
if(split_command_array.length == 2)
  command_string = split_command_array[0]
  operand = split_command_array[1].to_f     # Converting operand to float
  
  case command_string
  when "add"
    puts add(operand)
  when "subtract"
    puts subtract(operand)
  else
    puts "Sorry, This is an invalid operation."
  end
       
  
else
  puts "Invalid command ! "
end

