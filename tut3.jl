### A Pluto.jl notebook ###
# v0.14.5

using Markdown
using InteractiveUtils

# ╔═╡ ff676437-1271-44bf-8815-18702e506101
using PlutoUI

# ╔═╡ 3e128d80-be4b-11eb-1a43-db20efa1a686
md"$\textbf{Control Flow in Julia}$"

# ╔═╡ a8f5b7d8-453c-4a9a-8570-c95852da51e6
md" **If statement**"

# ╔═╡ 05699305-0154-4f76-af06-2aa83b3de471
function check_sign(x)
	if x>0 
	    return "It is positive"
	else
		return "It is negative"
	end
end

# ╔═╡ d0cd42bb-4e6c-4653-9cde-d54fcc769c5b
check_sign(-5)

# ╔═╡ c86dfcd5-e20a-44cd-a12a-956f42573cc5
md"""
we can check more than one statements.

 * 'and' as & if both true return true otherwise false
 * 'or' as || if atleast one of the statement is true return true
"""


# ╔═╡ 17199c85-8555-4ddb-94aa-7a67318fc6e4
function check_it(x)
	if x>0 & x<50
	    return "It is very large"
    end
end

# ╔═╡ 174dd3f8-f722-4123-9061-f5e2ad317a1e
check_it(90)

# ╔═╡ 3d5e3d8e-6dd7-4fd6-aeba-69911a2da25f
md" **Loops**"

# ╔═╡ 5f856e58-6048-47a5-8df9-ee8e39d3b54d
md"""
*For Loop*
Syntax for "for loop" is following
"""

# ╔═╡ 326bb618-1475-4b3d-8e88-fc86abfab9c3
md" we will use plutoUI for display of print command--

with_terminal() do

"


# ╔═╡ 806f59bd-efc6-4953-925d-ad3b431cdfdd
 with_terminal() do
  for i in 1:10
	println( i^2)
  end
end

# ╔═╡ 1c850252-2413-4b05-b502-b21ab9d56ffd
with_terminal() do
  for i ∈ 1:10
	print( i^2)
  end
end

# ╔═╡ a0c8ee5f-2f57-43f6-8bb5-134327ea8f49
md" Here we have used a range(we can use *range* function also) for 'i' but we can use lists(arrays or tuples) also"

# ╔═╡ 21daae56-322e-4aaa-b15d-d7ec6874e355
name = ["ram","shyam","radha"]

# ╔═╡ fa2bdcf1-af33-489a-9081-d4c7551f0cf3
with_terminal() do
  for i in name
	println("Hello ", i)
  end
end

# ╔═╡ 354582a5-2ae0-483b-b23b-bc09d82608df
v = range(1,10,step=1)

# ╔═╡ 8f242891-eda0-4b40-a4f5-7a0773ca6222
typeof(v) #it is not any array to make it array we can use collect

# ╔═╡ fef62df6-88b6-455b-801c-d132472e8d43
#vv=collect(v)

# ╔═╡ eef5f547-d80f-4c6f-a0d4-4e62205789db
#typeof(vv)

# ╔═╡ e65ff300-2db2-4ef2-b27e-bf37a19a9abc
with_terminal() do
 for i in range(1,10,length=10)
	println(i)
  end
end

# ╔═╡ 3e364ffc-7532-40b8-8d10-14e6d449896a
md" **While Loop**"

# ╔═╡ 56590a51-c5a7-482b-ac4c-f0e4aa59a699
md" while loop runs until certain condition is matched"

# ╔═╡ 73b9e482-cca4-4281-a9f7-be4faa06e980
with_terminal() do
i=0
    while(i<30)
        println(i)
        i += 1
    end
end

# ╔═╡ 8816f380-03a4-4c5d-81d2-5e0a7a77961e
with_terminal() do
x = ["a","b","c"]
for couple in enumerate(x)
    println(couple)
end

(1, "a")
(2, "b")
(3, "c")
end

# ╔═╡ a4c26ff2-dbc5-4121-86b5-64a412bf20ff
md" *enumerate* return value of iterator"

# ╔═╡ Cell order:
# ╟─3e128d80-be4b-11eb-1a43-db20efa1a686
# ╟─a8f5b7d8-453c-4a9a-8570-c95852da51e6
# ╠═05699305-0154-4f76-af06-2aa83b3de471
# ╠═d0cd42bb-4e6c-4653-9cde-d54fcc769c5b
# ╠═c86dfcd5-e20a-44cd-a12a-956f42573cc5
# ╠═17199c85-8555-4ddb-94aa-7a67318fc6e4
# ╠═174dd3f8-f722-4123-9061-f5e2ad317a1e
# ╟─3d5e3d8e-6dd7-4fd6-aeba-69911a2da25f
# ╟─5f856e58-6048-47a5-8df9-ee8e39d3b54d
# ╠═ff676437-1271-44bf-8815-18702e506101
# ╟─326bb618-1475-4b3d-8e88-fc86abfab9c3
# ╠═806f59bd-efc6-4953-925d-ad3b431cdfdd
# ╠═1c850252-2413-4b05-b502-b21ab9d56ffd
# ╟─a0c8ee5f-2f57-43f6-8bb5-134327ea8f49
# ╠═21daae56-322e-4aaa-b15d-d7ec6874e355
# ╠═fa2bdcf1-af33-489a-9081-d4c7551f0cf3
# ╠═354582a5-2ae0-483b-b23b-bc09d82608df
# ╠═8f242891-eda0-4b40-a4f5-7a0773ca6222
# ╠═fef62df6-88b6-455b-801c-d132472e8d43
# ╠═eef5f547-d80f-4c6f-a0d4-4e62205789db
# ╠═e65ff300-2db2-4ef2-b27e-bf37a19a9abc
# ╟─3e364ffc-7532-40b8-8d10-14e6d449896a
# ╟─56590a51-c5a7-482b-ac4c-f0e4aa59a699
# ╠═73b9e482-cca4-4281-a9f7-be4faa06e980
# ╠═8816f380-03a4-4c5d-81d2-5e0a7a77961e
# ╟─a4c26ff2-dbc5-4121-86b5-64a412bf20ff
