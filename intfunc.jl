#Here we will write three different methods to evaluate integral namely trapezoidal and simpson 1/3 and 3/8 rule
function trapz(y,h)
    I=0
    n = length(y)
    for i in  1:n
    I+=y[i]
    end
    I = h*(I - (y[1]+y[n])/2)
   return I
end

function simp_13(y,h)
    #total no. of points must be odd
    I=0
    odd_terms = 0
    even_terms = 0
    n =length(y)
    for i ∈ 2:n-1
        if i%2 == 0
            even_terms += y[i]
        else
            odd_terms += y[i]
        end
    end
    I = h*(y[1]+y[n]+2*even_terms+4*odd_terms)/3    
end

function simp_38(y,h)
    #total no. of points must be even
    I=0
    first = 0
    second = 0
    third = 0
    n =length(y)
    for i ∈ 2:3:n-2
        first +=y[i]
        second +=y[i+1]  
    end

    for j ∈ 3:3:n-3
    third +=y[j] 
    end
    I = 3*h*(y[1]+y[n]+3*(first+second)+2*third)/8    

end