class RPNCalculator

  def initialize
    @operators = ["*", "+", "-", "/"]
    @rpn_stack = []
  end

  attr_reader :value

  def push(operand)
    @rpn_stack.push(operand)
  end

  def plus
    raise ArgumentError.new('calculator is empty') if @rpn_stack.size == 0
    @value = @rpn_stack.pop + @rpn_stack.pop
    @rpn_stack.push(@value)
  end

  def minus
    raise ArgumentError.new('calculator is empty') if @rpn_stack.size == 0
    @value = 0 - (@rpn_stack.pop - @rpn_stack.pop)
    @rpn_stack.push(@value)
  end

  def divide
    raise ArgumentError.new('calculator is empty') if @rpn_stack.size == 0
    results = @rpn_stack.pop(2)
    @value = results[-2].to_f / results[-1].to_f
    @rpn_stack.push(@value)
  end

  def times
    raise ArgumentError.new('calculator is empty') if @rpn_stack.size == 0
    @value = @rpn_stack.pop * @rpn_stack.pop
    @rpn_stack.push(@value)
  end

  def tokens(token_string)
    token_string.split(" ").map! do |item|
      if @operators.include?(item)
        item.to_sym
      else
        item.to_i
      end
    end
  end

  def evaluate(ops)
    ops.split(" ").map! do |i|
      if @operators.include?(i)
        i.to_sym
      else
        i.to_i
      end
    end.each do |item|
      case item
        when :*
          self.times
        when :/
          self.divide
        when :+
          self.plus
        when :-
        self.minus
        else
          self.push(item)
      end
    end
    self.value
  end

end
# calc = RPNCalculator.new
# calc.push(2)
# calc.push(3) 
# calc.push(4)
# p calc.divide
# p calc.evaluate("1 2 3 * +")
