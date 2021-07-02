#central difference with two points
function numdiff(f,h,a,method)
  #y is function
  #step size
  #a is point at which diff need to be evaluated
  if method == "forward"
   return (-3*f(a-h) + 4*f(a) - f(a+h))/(2*h)
  elseif method == "backward"
    return (f(a-h) - 4*f(a) + 3*f(a+h))/(2*h)
  elseif method == "central"
    return (f(a+h) - f(a-h))/(2*h)
  end

end