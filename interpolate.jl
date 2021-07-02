
using Plots

#with two points 
x = collect(2:5)
xarray = [2,5]
yarray = [1/2,1/5]
n =length(x)
p2 = zeros(n,1)
for i ∈ 1:n
    p2[i] = lagrange(xarray,yarray,x[i])
end
  
#with three points
xarray = [2,4,5]
yarray = [1/2,1/4,1/5]
n =length(x)
p3 = zeros(n,1)
for i ∈ 1:n
    p3[i] = lagrange(xarray,yarray,x[i])
end


#with four points
xarray = [2,3,4,5]
yarray = [1/2,1/3,1/4,1/5]
n =length(x)
p4 = zeros(n,1)
for i ∈ 1:n
    p4[i] = lagrange(xarray,yarray,x[i])
end




func_act = 1 ./ x
plot(x,func_act,w=4,)
plot!(x,p4,w=2,line = :dot,label = "P4(x)")
plot!(x,p2,w=3,line = :dashdotdot,label = "P2(x)")
plot!(x,p3,w=3,line = :dash,label = "P3(x)")

plot!(title = "Interpolation of 1/x,with 2,3,4 points")

savefig("C:\Users\Narayan\Desktop\julia\interpl.png")
