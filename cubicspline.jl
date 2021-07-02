using Base: Float64
#i is interval and x is the point to be evaluated at,for unit interval h = 1
function cubicspline(i,x)
    first_term = (ddf[i]*(xd[i+1] - x)^3  + ddf[i+1]*(x-xd[i])^3)/6 
    second_term =  ((yd[i] - ddf[i]/6)*(xd[i+1]-x) + (yd[i+1] - (ddf[i+1])/6)*(x - xd[i])) 
    return first_term+second_term
end
