#we will use julia package fastquadrature
using FastGaussQuadrature
#1. legendre gauss FastGaussQuadrature
#let us first compute weights and nodes
x,w = gausslegendre(3)
f(x) = x.^4 
I = f(x)'*w #sum of weights and nodes
#2. Leguerre GaussQuadrature
x₁,w₁ = gausslaguerre(2)
x₂,w₂ = gausslaguerre(3)
#note that exp(-x) is inbuilt in package, just supply the f(x)
f₁(x₁) = (x₁.^4)
f₂(x₂) = (x₂.^4)
I₁ = f₁(x₁)'*w₁
I₂ = f₂(x₂)'*w₂

