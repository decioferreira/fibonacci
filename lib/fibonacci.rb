require "fibonacci/version"

module Fibonacci
  class Calculator
    def calculate index
      return index if index <= 1
      calculate(index - 1) + calculate(index - 2)
    end
  end
end
