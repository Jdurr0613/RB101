# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation
# output the result
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to Calculator! Enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("Make sure to enter a valid name")
  else
    break
  end
end

loop do
  number_one = nil
  number_two = nil

  loop do
    prompt("What is the first number")
    number_one = Kernel.gets().chomp()
    if valid_number?(number_one)
      break
    else
      prompt("That is not a valid number")
    end
  end

  loop do
    prompt("What is the second number")
    number_two = Kernel.gets().chomp()
    if valid_number?(number_two)
      break
    else
      prompt("That is not a valid number")
    end
  end
  operator_prompt = <<-MSG
  "What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide"
  MSG
  prompt(operator_prompt)
  operator = nil
  loop do
    operator = Kernel.gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("That is not a valid operation. Must chose 1, 2, 3, or")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result =  case operator
            when '1'
              number_one.to_i() + number_two.to_i()
            when '2'
              number_one.to_i() - number_two.to_i()
            when '3'
              number_one.to_i() * number_two.to_i()
            when '4'
              number_one.to_f() + number_two.to_f()
            end

  prompt("The result is #{result}")

  prompt("Would you like to do another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
  prompt("Thank you and good-bye")
end
