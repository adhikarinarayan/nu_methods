using Plots

x =collect(-1:0.001:1)'
f(x) = sin.(x)



for i ∈ 1:2001
  d[i] = copy(numdiff(f,0.1,i,"central"))
end

 

