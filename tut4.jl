### A Pluto.jl notebook ###
# v0.14.5

using Markdown
using InteractiveUtils

# ╔═╡ cd369450-bfc9-11eb-05d9-5795f467b990
md"""
**Broadcasting and Variable Scope**
"""

# ╔═╡ c74a6908-34af-4308-b9a2-2b3743863d3f
md"Operations with array"

# ╔═╡ 92f3b83f-5232-496e-bce7-4ba22165bd02
begin
a = [1,2,3]
b = [3,5,4]
d = [1 2 3]
end

# ╔═╡ 609198c4-a58e-4ede-9276-89ca1a868142
typeof(b)

# ╔═╡ 1099daa0-5446-4a9a-957a-ccec4eb0c9fb
#a*b#can't do this operation since both are column vectors

# ╔═╡ ab42d533-782e-4c4e-bc24-0992a2f86a5f
c = [2 2 2 ]

# ╔═╡ c0b63cda-3ee5-4867-a44f-6f50f72bfdda
a*c # column * row 

# ╔═╡ fa5fec83-da8e-4c36-89fd-6f31cbe80935
c*a # column * row, just like dot product

# ╔═╡ 5c72da9d-f424-4b68-a3b9-cfeeed3f1e99
md" In programming we often deal with situations where we do element-wise operations"

# ╔═╡ 1076bde1-1751-4a30-9aa8-38fc9ae4f618
md"""
Hence we use something call *Broadcasting*
"""

# ╔═╡ eadb1e51-7b41-45cb-8a76-77973bec55b4
a.*b

# ╔═╡ 4934996c-0d3f-4f59-83c7-7dc5625b6971
a.*c

# ╔═╡ 7c3cc81b-2ef8-43e8-b7c5-9e531293f619
a # column

# ╔═╡ f30344ad-a21b-423c-8c4e-d476f2acdfa9
d #row

# ╔═╡ f89603ac-8b83-4801-823c-d23c60c3cb4a
c

# ╔═╡ f9044a2a-558a-4f05-8f30-a1c0d40be613
d.*c # notice the difference, array gets multiplied in same direction as they are written

# ╔═╡ c2142860-a489-4ce8-9a1e-b890dbfe0275
sin.(a)

# ╔═╡ 7e9a93fa-19c0-42b0-a181-f71ad4366e02
md"""

    There is no speed gain of broadcasting over for loop in julia. it is good idea to   use loops wherever possible because they are easy to extend to multithreads

"""

# ╔═╡ d8349330-391e-4244-8c8c-5e03925d586d
md"""

**Variable Scope**

"""

# ╔═╡ 3abb669c-b7e6-4df9-9580-d6842efe6c08
md"""
 * Global Scope - Accessible everywhere in program
 * local scope - accessible only inside the scope, and other scopes defined inside it
"""

# ╔═╡ 66786c42-6629-449e-8e9c-a409e412193f
md""" eg.
   * Global - Modules,REPL
   * local  - loops, let, functions
"""

# ╔═╡ dba81f47-048b-4a97-a9b3-3d469aab7a2c
function exa1()
	z = 42
	return
end

# ╔═╡ 597d7f30-bd26-4356-8083-8fb4ff6bd07b
#z is only defined inside function, it has local scope

# ╔═╡ e8bf8280-b30d-48d2-a93e-8199bed8de20
md"we can make it global using *global*"

# ╔═╡ ca3958f0-027e-4732-a00f-62dab532cbe9
function exa2()
	global z = 42
	return
end

# ╔═╡ d6221e48-365c-4375-94c1-3f39ba94b5ca
exa2()

# ╔═╡ aabd42d0-c1e2-47b6-8164-d4d57bd7a939
z

# ╔═╡ c0b5a76e-0ff5-449f-9cd9-87ef3478c197
# but better approach is following
function exa3()
	p = 42
	return p
end

# ╔═╡ 61c555a7-5faa-467d-b955-0ebbb246a402
p = exa3()

# ╔═╡ 4e6d3ddf-7c35-434d-bc89-4458e5b07da1
md" **Let and Begin**"

# ╔═╡ 5f4e2220-da92-4137-89a1-0e9ce5d68547
# let introduce local scope
v = let
	i = 41
	i-=1
	i
end

# ╔═╡ 799643c2-dd03-4ede-af89-5f12f20b608e
#i #but i is undefiend outside that scope

# ╔═╡ 6483c62e-dfc3-4af7-bcd6-c8588345e383
# begin introduce global scope
 vv  = begin
	i = 41
	i-=1
	i
end

# ╔═╡ c678b5ca-9362-4478-bc4f-aafda77a560b
i

# ╔═╡ 81ae76bc-c97c-4faa-993e-388f119ff091
md" **Global Scope** - It is generally advisable to avoid global scope as much as possible, since they can cause type instabilty and performance issues"

# ╔═╡ b5b2c6cd-407c-4687-999e-fc273c6b5050
md" **Constants** - they are good replacements for constant global scope"

# ╔═╡ ea8827d6-1711-435b-bbde-b4a048fb7673
#eg speed of light
const l = 3e8

# ╔═╡ c8009cc3-84e2-4e58-bd31-88c28986526d


# ╔═╡ f2922ef8-56c1-41bd-8acf-95d98abac5e2
md""" if we want global scope for some part of code, introducing module is good idea"""

# ╔═╡ 05eaaf88-ba40-4d2e-9cb9-57b0065ac491


# ╔═╡ Cell order:
# ╟─cd369450-bfc9-11eb-05d9-5795f467b990
# ╟─c74a6908-34af-4308-b9a2-2b3743863d3f
# ╠═92f3b83f-5232-496e-bce7-4ba22165bd02
# ╠═609198c4-a58e-4ede-9276-89ca1a868142
# ╠═1099daa0-5446-4a9a-957a-ccec4eb0c9fb
# ╠═ab42d533-782e-4c4e-bc24-0992a2f86a5f
# ╠═c0b63cda-3ee5-4867-a44f-6f50f72bfdda
# ╠═fa5fec83-da8e-4c36-89fd-6f31cbe80935
# ╟─5c72da9d-f424-4b68-a3b9-cfeeed3f1e99
# ╟─1076bde1-1751-4a30-9aa8-38fc9ae4f618
# ╠═eadb1e51-7b41-45cb-8a76-77973bec55b4
# ╠═4934996c-0d3f-4f59-83c7-7dc5625b6971
# ╠═7c3cc81b-2ef8-43e8-b7c5-9e531293f619
# ╠═f30344ad-a21b-423c-8c4e-d476f2acdfa9
# ╠═f89603ac-8b83-4801-823c-d23c60c3cb4a
# ╠═f9044a2a-558a-4f05-8f30-a1c0d40be613
# ╠═c2142860-a489-4ce8-9a1e-b890dbfe0275
# ╟─7e9a93fa-19c0-42b0-a181-f71ad4366e02
# ╟─d8349330-391e-4244-8c8c-5e03925d586d
# ╟─3abb669c-b7e6-4df9-9580-d6842efe6c08
# ╟─66786c42-6629-449e-8e9c-a409e412193f
# ╠═dba81f47-048b-4a97-a9b3-3d469aab7a2c
# ╠═597d7f30-bd26-4356-8083-8fb4ff6bd07b
# ╟─e8bf8280-b30d-48d2-a93e-8199bed8de20
# ╠═ca3958f0-027e-4732-a00f-62dab532cbe9
# ╠═d6221e48-365c-4375-94c1-3f39ba94b5ca
# ╠═aabd42d0-c1e2-47b6-8164-d4d57bd7a939
# ╠═c0b5a76e-0ff5-449f-9cd9-87ef3478c197
# ╠═61c555a7-5faa-467d-b955-0ebbb246a402
# ╟─4e6d3ddf-7c35-434d-bc89-4458e5b07da1
# ╠═5f4e2220-da92-4137-89a1-0e9ce5d68547
# ╠═799643c2-dd03-4ede-af89-5f12f20b608e
# ╠═6483c62e-dfc3-4af7-bcd6-c8588345e383
# ╠═c678b5ca-9362-4478-bc4f-aafda77a560b
# ╟─81ae76bc-c97c-4faa-993e-388f119ff091
# ╟─b5b2c6cd-407c-4687-999e-fc273c6b5050
# ╠═ea8827d6-1711-435b-bbde-b4a048fb7673
# ╟─c8009cc3-84e2-4e58-bd31-88c28986526d
# ╟─f2922ef8-56c1-41bd-8acf-95d98abac5e2
# ╠═05eaaf88-ba40-4d2e-9cb9-57b0065ac491
