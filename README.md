# Reverse Polish Notation Calculator


Reverse Polish Notation(RPN), also known as postfix notation, is a mathematical notation in which every operator follows all of its operands. It does not need parenthesis. I first used this when I bought an HP calculator to use for trades while working in the mortgage industry.

This program is written in ruby with the following specifications:

1. Uses standard input/output.
2. Uses four standard arithmetic operators +, -, *, /.
3. Supports negative and decimal numbers and has no arbitrary limits on the number of operations.
4. Does not allow invalid or undefined behavior, such as division by 0.
5. Exits when receives a q command.

An equation written in infix notation (what is seen in normal math equations) shown as:

` (5 + 2) * 4 - 1 `

would look like this in RPN:

` 4 5 2 + * 1 - `

If the expression is empty, it should evaluate to zero (0).

## To use program, enter the irb at your terminal prompt.

When the irb loads, enter load 'rpn.rb' and hit enter. From here you will load a new instance of the calculator using `calc = RPN.new`. You will then type `calc.get_input` where you will be accessing the calculator.

