class SimpleCalculator
  class UnsupportedOperation < StandardError
    def initialize(operation)
      super("#{operation} is not supported")
    end
  end

  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    unless first_operand.is_a?(Integer) && second_operand.is_a?(Integer)
      raise ArgumentError, "#{first_operand} or #{second_operand} is not an integer"
    end

    case operation
    when '+'
      "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
    when '/'
      begin
        "#{first_operand} / #{second_operand} = #{first_operand / second_operand}"
      rescue ZeroDivisionError
        "Division by zero is not allowed."
      end
    when '*'
      "#{first_operand} * #{second_operand} = #{first_operand * second_operand}"
    else
      raise UnsupportedOperation.new(operation)
    end
  end
end
