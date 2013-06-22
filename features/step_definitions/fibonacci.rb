Before do
  @calculator = Fibonacci::Calculator.new
end

Given(/^I ask for the Fibonacci number of index "(.*?)"$/) do |index|
  @result = @calculator.calculate(index.to_i)
end

Then(/^I should receive the result of "(.*?)"$/) do |result|
  assert_equal result.to_i, @result
end
