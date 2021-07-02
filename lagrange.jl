#Here we want to employ lagrange interpolation for 1/x using 2,3,4 points
function lagrange(xarray,yarray,x)
    n = length(xarray)
    ans = 0
      for i ∈ 1:n
        L1 = 1
        L2 = 1
        for j ∈ 1:n
            if j != i
                L1 *= (x - xarray[j])
                L2 *= (xarray[i] - xarray[j])
            end
        end
        ans+=(L1/L2)*yarray[i]
      end
      return ans
    end




