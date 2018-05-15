$number = 0.0

# Add the number with the global number
def add_numbers(input_number)
  $number += input_number
  return $number
end

# Subtract number from  the global number
def subtract(input_number)
   $number -= input_number
   return $number
end

# Multiply the number with the global number
def multiply(input_number)
   $number *= input_number
   return $number
end

# Divide  the global number with the number
def divide(input_number)
  $number /= input_number
  return $number
end

# To cancel the operations or clear $number
def  cancel_operations()
  $number = 0.0
end

class String
  def is_integer?
    self.to_i.to_s == self
  end
end

loop do
  # Reading users command
  input_command_from_user = gets.chomp.to_s
  split_command_array = input_command_from_user.split(" ")

  # Checking for command without any operand
  if(split_command_array.length == 2)
    command_string = split_command_array[0]
    operand = split_command_array[1]
    if(operand.is_integer?)     # Checking for commands like 'add abc' where operand not an number
      operand = operand.to_f    # Converting operand to float

      case command_string
      when "add"
        puts add_numbers(operand)
      when "subtract"
        puts subtract(operand)
      when "multiply"
        puts multiply(operand)
      when "divide"
        puts divide(operand)
      else
        puts "Sorry, This is an invalid operation."
      end
    else
      puts "Invalid Operand !"
    end  
    
  else
    command_string = split_command_array[0]

    case command_string
    when "cancel"
      puts cancel_operations()
    when "exit"
      puts "Good Bye !"
      break
    else
      puts "Sorry, This is an invalid operation."
    end
  end
end


