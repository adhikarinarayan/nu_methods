### A Pluto.jl notebook ###
# v0.14.5

using Markdown
using InteractiveUtils

# ╔═╡ 670c5c50-c5c3-11eb-20ee-a754d99d4e2e
md"**Strang Matrix Problem**"

# ╔═╡ c8e0ca35-2178-470e-b66b-607040c691c7
md"a matrix with -2 on the diagonal, 1 on the off-diagonals, and 0 elsewere."

# ╔═╡ 05a929a3-7fcd-4807-bad5-1e93d66d783f
begin
	N= 5 #order of matrix
	S = zeros(N,N)
	 for i ∈ 1:N
		
		S[i,i] = -2
		if i < N
		S[i+1,i] = 1
	    S[i,i+1] = 1
		end
	end
end

# ╔═╡ ae25bd54-0c43-49f2-b8cc-e02be7b00a6c
S

# ╔═╡ c5baa5cb-63fb-4433-aa66-75a18611a18c
md"**Factorial function to compute factorial of n**"

# ╔═╡ 1de98850-f6ec-43c1-87ae-e1efb8c13e31
function my_factorial(n)
	fact=1
 if n != 0
   for i ∈ 1 : n
	fact *= i
	end
		
	else
		fact = 1
	end
	return fact
end


# ╔═╡ f0429466-a53e-4f41-82d3-a47230bc2526
my_factorial((105))

# ╔═╡ efdf7f55-5152-4418-8556-9244ae6de456
md" we are getting 0 due to overflow"

# ╔═╡ e2505099-f5f4-4fe2-acb7-0e683dc0cb3c
md" we can use *big()* as input to get desired answer"

# ╔═╡ 8bc7f8a1-81ef-4d30-a9df-f4f36f77f865
#my_factorial(big(105))

# ╔═╡ a19bdcbd-5cd6-451c-a270-ec2bca0675d1
md"**Monte Carlo  π  Problem**"

# ╔═╡ aa762b74-9704-42f1-8828-d16b65cf51a8
md"""
Use random number generation to estimate  π . To do so, mentally draw the unit circle. It is encompassed in the square  [−1,1]×[−1,1] . The area of the circle is  $πr^2=π$ . The area of the square is  4 . Thus if points are randomly taken evenly from  [−1,1]×[−1,1] , then the probability they land in the circle ( x2+y2≤1 ) is  π/4 . Use this to estimate  π .
"""

# ╔═╡ 5c477046-649c-46c8-acb1-3e72a8086d05
rand(-1.0:0.1:1.0)

# ╔═╡ b80b34b3-c6d8-424f-b6c4-4d2f2e063f30
begin
	M = 2000000
	count = 0
	for i ∈ 1:M
		x= rand(-1:0.0001:1)#2*rand() - 1
		y= rand(-1:0.0001:1)#2*rand() - 1 
		k = sqrt(x^2 + y^2) 
		if k ≤ 1
			count += 1
		end
	end
	
	area = 4*(count/M)
end

# ╔═╡ a080b1ae-8880-4329-a82c-50b2c54b8a56
area

# ╔═╡ Cell order:
# ╟─670c5c50-c5c3-11eb-20ee-a754d99d4e2e
# ╟─c8e0ca35-2178-470e-b66b-607040c691c7
# ╠═05a929a3-7fcd-4807-bad5-1e93d66d783f
# ╠═ae25bd54-0c43-49f2-b8cc-e02be7b00a6c
# ╟─c5baa5cb-63fb-4433-aa66-75a18611a18c
# ╠═1de98850-f6ec-43c1-87ae-e1efb8c13e31
# ╠═f0429466-a53e-4f41-82d3-a47230bc2526
# ╟─efdf7f55-5152-4418-8556-9244ae6de456
# ╟─e2505099-f5f4-4fe2-acb7-0e683dc0cb3c
# ╠═8bc7f8a1-81ef-4d30-a9df-f4f36f77f865
# ╟─a19bdcbd-5cd6-451c-a270-ec2bca0675d1
# ╟─aa762b74-9704-42f1-8828-d16b65cf51a8
# ╠═5c477046-649c-46c8-acb1-3e72a8086d05
# ╠═b80b34b3-c6d8-424f-b6c4-4d2f2e063f30
# ╠═a080b1ae-8880-4329-a82c-50b2c54b8a56
