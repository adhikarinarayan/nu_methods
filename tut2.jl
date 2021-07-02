### A Pluto.jl notebook ###
# v0.14.5

using Markdown
using InteractiveUtils

# ╔═╡ 18031c50-be45-11eb-3c08-dbf84e7d1df7
md"Now we want to discuss the data structure in julia"

# ╔═╡ 95833f7d-4476-4ca4-86d6-c0afcbcf681b
md" $\textbf{Array}$"

# ╔═╡ 480f261b-acc7-4594-aa2d-db999ecda937
md"1.Vectors"

# ╔═╡ 7e67490c-47bd-46c0-aae3-6eae4f15548c
md"vectors are simple lis of objects which has same types, sometime we call 1d array,a vector"

# ╔═╡ 89aab3ce-e637-49b1-9bd6-2e7883ebaef8
a=[1,2,38,4]

# ╔═╡ a31f6d19-3885-4218-a2ff-f6d8dc875a68
b=["hi","how","are"]

# ╔═╡ 6122bd06-028c-48fc-ae74-077cbd493dee
md" we can acces any element of vector by array[elementnumber], we can modify it by append!(   ). '!' means we are modifying the argument"

# ╔═╡ 66493525-5266-48ca-a9f7-9e10308d1def
a[3]

# ╔═╡ 2d51abd0-e648-441f-98a9-bf46b1fc0a27
append!(a,5)

# ╔═╡ 794ef2de-d6ca-4c36-8e66-70db6c8a0cd8
md"however we cant't add other type to it"

# ╔═╡ 18565ba9-23b6-47d5-88c0-d9b6a75edc2d
#append!(a,5.3)

# ╔═╡ 459757d6-e980-471b-aa14-62ad5fb179c3
typeof(a)#vector with int64 enries and 1 dimension

# ╔═╡ 3fdb3419-0388-490b-83f1-6a9bd6927262
typeof(b)

# ╔═╡ 76effa53-c82d-4c27-b272-8eb24f330a84
md"2.Matrix"

# ╔═╡ 092a9420-b543-48e5-aaaf-fb5dc7d40b45
md"matrix can be thought as a 2-d array"

# ╔═╡ 498fb2d0-6109-46ae-815c-c0c873c5d32c
A = [1 2 3;2 5 3]

# ╔═╡ d4b812e5-5e0d-4f63-918a-df4e8ee39ce5
typeof(A) #2d array

# ╔═╡ f36f8fb4-f17c-4d9b-9d5c-e1b0dc39ccdf
md" we can acces any element using matrix_name[row index,column index] "

# ╔═╡ 4d226cfe-32c4-406f-a7ba-f6003fc6e549
A[2,2]

# ╔═╡ 5ab98239-d90e-460d-984c-c1f13db75a3b
md"N dimensional array or multidimensional array"

# ╔═╡ 082ff7fa-e1e5-407a-ac4b-65eb697271d6
md"we can use zeros or ones to create (a,b,c) dimensional array and then we can fill them using for loop"

# ╔═╡ a7a64a09-5bd6-4640-b89c-918d84c37586
zeros(2,2,2)

# ╔═╡ 9e4853a4-8612-410e-b6e2-0e441788f231
p=ones(2,2,2)

# ╔═╡ 39057198-d5e3-4281-9ce8-213a88fbec8b
typeof(p)

# ╔═╡ 9a932dce-ef99-402f-8bba-4014f6b3f8e8
md"slicing"

# ╔═╡ 2e5141bc-032e-4443-b2c4-9940ed4a5e46
a[1:3]

# ╔═╡ 0a8ada3d-fa28-4430-a31f-2ef9ffeb9999
md"arrays are pointers to some locations in memory,if we assign it to some other variable,then modifing that array may also modify original one"

# ╔═╡ 16c5a35c-37e6-4fae-9114-3220d178363a
a

# ╔═╡ c8dd1814-8dae-4e05-8649-a5477113ad5f
d=a

# ╔═╡ a7419e37-cd0f-4a7f-828a-197aa4467e6f
d[2]=40

# ╔═╡ 0b1ba8e2-e7ec-4c67-abc9-363d1e6a8024
d

# ╔═╡ 13d8f9eb-2dc3-47bc-ae99-a7320ad1df4a
a

# ╔═╡ 5b892e72-14e3-4785-bf28-38daada2105b
md"if one wish to avoid these changes,we can use the copy() "

# ╔═╡ 670495ab-991a-418c-94bc-09463c6fe41c
c=copy(a)

# ╔═╡ ad8d5cd5-c621-4945-8c54-dfdbddf6336b
c[2]=3

# ╔═╡ 62d40a71-70c2-4491-ba5f-711329c7962e
c

# ╔═╡ 2edce5d3-6df4-4058-9f93-326677a47c09
a

# ╔═╡ 38651c5d-0d0e-404e-b46d-d0130aac2acb
md"Tuples"

# ╔═╡ e0683db2-5db8-4967-8614-bfa226f01805
md"unlike arrays size of tuples can't be modified, once created" 

# ╔═╡ 716fc4d2-85a8-4def-9c3f-0ba36b30bbcb
md"Syntax: (a,b,c..)"

# ╔═╡ 744fa1f1-c5fd-45be-bce9-8183b0717ae2
z=(90,100,12)

# ╔═╡ 43f1a7d6-d0bc-49dc-b57e-d7aca2633774
typeof(z)

# ╔═╡ c30fd5c7-9ac0-40d5-bdfb-a3b8ba05ee7f
#append!(z,4)

# ╔═╡ 4a929d64-a5ac-4b43-aaac-79684963b46d


# ╔═╡ Cell order:
# ╟─18031c50-be45-11eb-3c08-dbf84e7d1df7
# ╟─95833f7d-4476-4ca4-86d6-c0afcbcf681b
# ╟─480f261b-acc7-4594-aa2d-db999ecda937
# ╟─7e67490c-47bd-46c0-aae3-6eae4f15548c
# ╠═89aab3ce-e637-49b1-9bd6-2e7883ebaef8
# ╠═a31f6d19-3885-4218-a2ff-f6d8dc875a68
# ╟─6122bd06-028c-48fc-ae74-077cbd493dee
# ╠═66493525-5266-48ca-a9f7-9e10308d1def
# ╠═2d51abd0-e648-441f-98a9-bf46b1fc0a27
# ╟─794ef2de-d6ca-4c36-8e66-70db6c8a0cd8
# ╠═18565ba9-23b6-47d5-88c0-d9b6a75edc2d
# ╠═459757d6-e980-471b-aa14-62ad5fb179c3
# ╠═3fdb3419-0388-490b-83f1-6a9bd6927262
# ╟─76effa53-c82d-4c27-b272-8eb24f330a84
# ╟─092a9420-b543-48e5-aaaf-fb5dc7d40b45
# ╠═498fb2d0-6109-46ae-815c-c0c873c5d32c
# ╠═d4b812e5-5e0d-4f63-918a-df4e8ee39ce5
# ╟─f36f8fb4-f17c-4d9b-9d5c-e1b0dc39ccdf
# ╠═4d226cfe-32c4-406f-a7ba-f6003fc6e549
# ╟─5ab98239-d90e-460d-984c-c1f13db75a3b
# ╟─082ff7fa-e1e5-407a-ac4b-65eb697271d6
# ╠═a7a64a09-5bd6-4640-b89c-918d84c37586
# ╠═9e4853a4-8612-410e-b6e2-0e441788f231
# ╠═39057198-d5e3-4281-9ce8-213a88fbec8b
# ╠═9a932dce-ef99-402f-8bba-4014f6b3f8e8
# ╠═2e5141bc-032e-4443-b2c4-9940ed4a5e46
# ╟─0a8ada3d-fa28-4430-a31f-2ef9ffeb9999
# ╠═16c5a35c-37e6-4fae-9114-3220d178363a
# ╠═c8dd1814-8dae-4e05-8649-a5477113ad5f
# ╠═a7419e37-cd0f-4a7f-828a-197aa4467e6f
# ╠═0b1ba8e2-e7ec-4c67-abc9-363d1e6a8024
# ╠═13d8f9eb-2dc3-47bc-ae99-a7320ad1df4a
# ╟─5b892e72-14e3-4785-bf28-38daada2105b
# ╠═670495ab-991a-418c-94bc-09463c6fe41c
# ╠═ad8d5cd5-c621-4945-8c54-dfdbddf6336b
# ╠═62d40a71-70c2-4491-ba5f-711329c7962e
# ╠═2edce5d3-6df4-4058-9f93-326677a47c09
# ╟─38651c5d-0d0e-404e-b46d-d0130aac2acb
# ╟─e0683db2-5db8-4967-8614-bfa226f01805
# ╟─716fc4d2-85a8-4def-9c3f-0ba36b30bbcb
# ╠═744fa1f1-c5fd-45be-bce9-8183b0717ae2
# ╠═43f1a7d6-d0bc-49dc-b57e-d7aca2633774
# ╠═c30fd5c7-9ac0-40d5-bdfb-a3b8ba05ee7f
# ╠═4a929d64-a5ac-4b43-aaac-79684963b46d
