# Mortgage and loan calculator that gives the user a monthly payment amount
# based on the supplied loan amount, APR, and loan duration

require 'yaml'
MESSAGE = YAML.load_file('mortgage_calculator_messages.yml')

# method for formatting messages to the user

def prompt(text)
  puts "=> #{text}"
end

# method for validating number input

def valid_number?(num)
  /\d\.\d/.match(num) || /\d/.match(num)
end

prompt(MESSAGE['welcome'])

# loop that prompts the user to enter the amount of the loan and validates
# the number with floating 

loan_amount = 0
loop do
  prompt(MESSAGE['loan_amount'])
  loan_amount = gets.chomp
  if valid_number?(loan_amount)
    break
  else
    prompt(MESSAGE['loan_amount_error'])
  end
end

# loop to receive and validate APY
annual_rate = 0
loop do
  prompt(MESSAGE['apr'])
  annual_rate = gets.chomp
  if valid_number?(annual_rate)
    break
  else
    prompt(MESSAGE['apr_error'])
  end
end

# loop to receive loan duration from user. If the loan duration is an interval
# of 12, we ask the user to confirm that they meant years

loan_years = 0
loop do
  prompt(MESSAGE['loan_duration'])
  loan_years = gets.chomp
  if valid_number?(loan_years) && (loan_years.to_i % 12 == 0)
    prompt(MESSAGE['duration_confirmation'])
    response = gets.chomp
    if response.downcase.start_with?('y')
      loan_years /= 12
    end
    break
  elsif valid_number?(loan_years) && (loan_years.to_i % 12 != 0)
    break
  else
    prompt(MESSAGE['duration_error'])
  end
end

# convert the annual rate from the user to a monthly rate

monthly_rate = (annual_rate.to_f / 100) / 12

# convert the loan term from years to months

loan_months = loan_years.to_f * 12

# impliment the formula to calculate the monthly payment

monthly_payment = loan_amount.to_f * (monthly_rate / (1 - (1 + monthly_rate)**(0 - loan_months)))

# calculate total payment and total interest

total_payment = loan_months * monthly_payment
total_interest = total_payment - loan_amount.to_f

# report the final amounts to the user

prompt(MESSAGE['payment'] + monthly_payment.round(2).to_s)
prompt("Total of #{loan_months.round(0)} payments will equal #{total_payment.round(2)}")
prompt("The total interest paid is #{total_interest.round(2)}")