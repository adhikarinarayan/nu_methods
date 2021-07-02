using Plots
xd = [2;3;4;5]
yd = [1/2,1/3,1/4,1/5]
ddf= [0,3/25,1/50,0]
x1 = collect(2:0.1:3.1)
x2 = collect(3:0.1:4.1)
x3 = collect(4:0.1:5.1)

n=length(x1)
y1=zeros(n,1)
y2=zeros(n,1)
y3=zeros(n,1)
for j ∈ 1:length(x1)

  y1[j] = cubicspline(1,x1[j]) 
  y2[j] = cubicspline(2,x2[j])
  y3[j] =cubicspline(3,x3[j])

end

yf = vcat(y1,y2,y3)
xf =vcat(x1,x2,x3)
x =collect(2:0.1:5)
actf = 1 ./ x
plot(xf,yf)
plot!(x,actf,w=1)
