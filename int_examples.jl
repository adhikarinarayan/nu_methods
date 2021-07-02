#let's integrate x^3 with all these methods
using Plots
using SymPy
x = collect(0.001:0.001:5)
y = x.^3
h = 0.001

I1=trapz(y,h)
I2=simp_13(y,h) #n must be even
I3=simp_38(y,h)

@vars k
I = integrate(k,(k,0,5))
print(I1,"  1/3rd ",I2,"  3/8th ",I3)