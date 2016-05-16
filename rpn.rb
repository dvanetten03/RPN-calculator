class RPN
  attr_reader :operands
 
  OPERATORS = %w(+ - * /)
  
  def initialize
    @operands =[]
  end
  
  def ops(operator)
    if @operands.size > 1
      @operands << calc_rpn(@operands.pop(2), operator)
    end
    @operands.last
  end
  
  def process(input)
    if num = convert(input)
      @operands << num
      num
    elsif OPERATORS.include?(input)
      ops(input)
    else
      print "Holy cow, are you trying to break my code? =) Try again, or hit q to quit"
    end
  end
  
  def get_input
    loop do
      print '> '
      input = STDIN.gets.chomp()
      if input == "q"
        return nil
      else
        puts process(input)
      end
    end
  end
  
  def convert(string)
    if string == string.to_i.to_s
      string.to_i
    elsif string == string.to_f.to_s
      string.to_f
    else
      false
    end
  end
  
  def calc_rpn(operands, operator)
    num1 = operator == "/" ? operands[0].to_f : operands [0]
    num2 = operator == "/" ? operands[1].to_f : operands [1]
    num1.send(operator.to_sym, num2)
  end
end
    
        