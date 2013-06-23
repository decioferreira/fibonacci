Before do
  @calculator = Fibonacci::Calculator.new
end

Given(/^I ask for the Fibonacci number of index "(.*?)"$/) do |index|
  @result = @calculator.calculate(index.to_i)
end

Given(/^I ask the Fibonacci number for the string "(.*?)"$/) do |string|
  @value = string
end

Then(/^I should receive the result of "(.*?)"$/) do |result|
  assert_equal result.to_i, @result
end

Then(/^I should receive a raise of an error with type "(.*?)"$/) do |arg1|
  assert_raise TypeError do
    @calculator.calculate(@value)
  end
end
