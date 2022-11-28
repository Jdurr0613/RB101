# Tasks the calculator completes
# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation
# output the result
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
# define a method to add a '=>' to message prompts
def prompt(message)
  Kernel.puts("=> #{message}")
end

# valid number method using regex allows for integer or floating point numbers
# to_i calls would have to be changed to to_f in the operation logic to 
# enable floating point addition, subtraction, and multiplication

def valid_number?(num)
  num.match(/\d/)
end

# method for inserting the correct operation into the operation message
# using a hash table prevents possible errors from adding code after
# the previously used case statement

def operation_to_message(op)
  choices = {
    '1' => 'Adding',
    '2' => 'Subtracting',
    '3' => 'Multiplying',
    '4' => 'Dividing'
  }
  choices[op]
end

prompt(MESSAGES['welcome'])

# loop to validate user name input

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt(MESSAGES['name_error'])
  else
    break
  end
end

# main program loop. continues asking for numbers, then operations until
# the user chooses no from the final prompt

loop do
  number_one = nil
  number_two = nil

  # two loops to get two numbers from the user

  loop do
    prompt(MESSAGES['first_num'])
    number_one = Kernel.gets().chomp()
    if valid_number?(number_one)
      break
    else
      prompt(MESSAGES['invalid_num'])
    end
  end

  loop do
    prompt(MESSAGES['second_num'])
    number_two = Kernel.gets().chomp()
    if valid_number?(number_two)
      break
    else
      prompt(MESSAGES['invalid_num'])
    end
  end

  # prompt the user to choose an operation. If the user chooses division
  # the input is converted to floating point. Change all 'to_i' calls to 
  # 'to_f' here for floating point addition, subtraction, and multiplication.
  # the choice to divide forces a different operation if the second number is 0
  
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

    if %w(1 2 3).include?(operator)
      break
    elsif operator == '4' && number_two.to_i != 0
      break
    elsif operator == '4' && number_two.to_i == 0
      prompt(MESSAGES['div_zero'])
    else
      prompt(MESSAGES['operation_error'])
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
              number_one.to_f() / number_two.to_f()
            end

  prompt(MESSAGES['result'] +  result.to_s)

  prompt(MESSAGES['another_calc'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')

  prompt(MESSAGES['goodbye'])
end
