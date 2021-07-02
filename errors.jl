using Plots
##
ep_ex = Any[] #approximate error
ep_cx = Any[]
 N = 16 # till 16 terms
x = 1 # around 1
sum = 0
for i in 0:N
	sum+= x^i / factorial(i)
	δ = exp(x) - sum
	append!(ep_ex,δ)
end

for j in 0:N
	sum+=((-1)^j)*x^(j) / factorial(big(2*j))
	δ = cos(x) - sum
	append!(ep_cx,δ)
end
##
plotly()
x_axis = collect(0:N)
plot(x_axis,ep_cx,yaxis = log)
#plot(x_axis,ep_ex,yaxis = log)