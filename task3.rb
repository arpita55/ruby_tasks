class RPN
def evaluate(expression)
expession=expression.split
operands=[]
evaluation=[]
expression.each do|X|
case X
 when /\d/
  evaluation.push(X.to_f)
 when "-","/","*","+","**"
operands=evaluation.pop(2)
evaluation.push(operands[0].send(x,operands[1]))
end
end
end

ras=RPN.new
ras.evaluate("5 1 2 + 4 * + 3 -")
end
