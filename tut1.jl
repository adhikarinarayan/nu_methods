### A Pluto.jl notebook ###
# v0.14.5

using Markdown
using InteractiveUtils

# ╔═╡ 68f8fbb0-bd60-11eb-0615-63092ea78353
md" We shall start by learning julia syntax and other cool features of it.
In this first tutorial we will learn how to write functions and how loops work in julia"

# ╔═╡ 9a49c54a-5c3e-4a36-9bf2-92f2d5c8d9eb
md" We start by $\textbf{Variables}$ and Types in Julia"

# ╔═╡ 1440b40f-2436-4443-8f35-707366c97834
md"we can assign a number or string to a variable"

# ╔═╡ 7d81458a-02e1-4021-9395-b477824143f0
my_name= "narayan"

# ╔═╡ 18ca6be4-daff-458e-a03f-d01854ba0f87
numberr = 50

# ╔═╡ 1750cacf-0fa3-4c70-832a-5538034fa24c
typeof(my_name)

# ╔═╡ c3f595b5-583a-4aa7-8bdb-356765a194c4
typeof(numberr)

# ╔═╡ 652b9a32-06ce-4cc6-861e-30a7138cc2c3
nnumber = 50.0 #here it will be a float

# ╔═╡ 5c111f15-59fd-4b1f-b9bf-40109b6e2b17
typeof(nnumber)

# ╔═╡ ade47a6e-2197-48b7-843f-db5ee61bfddf
md"We can see these objects have different-different types,unlike FORTRAN or C++ we don't have to specify types of variable in beginning" 

# ╔═╡ 8f6cbb24-a041-498e-8971-5f705d7cd4ee
md"we can also do mathematical operations in following way"

# ╔═╡ 1e9eee2a-d79e-4118-be78-bd8ebcc24057

x,y=2,3

# ╔═╡ 17d61d46-cd2a-45e3-99e6-234d7ab4d08f
add = x+y

# ╔═╡ cc533e23-f8d8-40c1-a0bf-70fc89074156
subtract = x-y

# ╔═╡ d654c520-b696-43a2-afba-45143477c83c
multipl = x*y

# ╔═╡ 1f8d8b21-37a5-42ee-8f84-37628b319243
powerr = x^2

# ╔═╡ d01c6282-17d7-4d2a-a6a4-c57c59b76dcd
modulus = x%y
#and many more


# ╔═╡ ddace2eb-c16d-4eae-9091-7ebf64c2c5d9
md" every object in julia has a $\textbf{Type}$, and it can be checked using typeof().
EVERY ELEMENT BELONGS TO A SUPERTYPE $\textbf{`ANY'}$. then ANY have many subtypes eg.  number. then number have subtype float or integer and then these have subtypes."

# ╔═╡ ee0c422e-6d13-4b83-b03d-5006c4c0fef6
typeof(3.00)

# ╔═╡ bb095640-e1b5-42fe-9e5f-7c21d9b76c66
md"we can convert type of any variable using convert(type,variable)"

# ╔═╡ 03ac3f2e-8084-4b67-8439-7387589a10c9
z = convert(Int64,3.00)

# ╔═╡ 1c90fd7b-fe2f-4cf2-ba1c-2c0142ff649d
typeof(z)

# ╔═╡ 165f1d61-799c-4970-868a-826986cb060c
md"In a program it is not a good practise to convert the type of a variable,since some part can get truncated.It is called $\textbf{Type stability}$"

# ╔═╡ 1ec34206-c40b-42b7-874a-2099852f2406
md" $\textbf{ 2 . Functions}$"

# ╔═╡ e433ac26-df3d-4767-80be-ad574f2da810

md" We can define functions in following three ways - "



# ╔═╡ 0bbdcf31-31fb-4ef3-9d62-f78f4bbf2d9e
md"1.start with keyword $\textrm{function}$ and end with $\textrm{end}$,will give the value specified by $\textrm{return}$. If $\textrm{return}$ is not specified, it will return last computed value
"

# ╔═╡ d592f435-45c9-4bdc-bf91-1c9a28aa0684
function add_one(x)
	return x+1
end

# ╔═╡ 64158717-4562-45ee-96cd-380ab391e429
add_one(5)

# ╔═╡ 21968201-ca39-476c-a3ec-c09c0c8bb7ad
md"2.Inline function with $\textrm{function name(variable)}$"


# ╔═╡ f368ec4e-949f-442d-ade3-639e565e21c1
add_two(x) = x+2

# ╔═╡ 5bfe100f-d8bc-4297-88b5-e1cfc25c21df
add_two(5)

# ╔═╡ 3936aa73-8a98-4452-85f8-803fbaf34a05
md"3.Anonymous functions- Like Lambdas of python $\textcolor{red}{(not\:\:recommended)}$ "

# ╔═╡ 5dd8af76-0b11-405f-821a-6cd8ebbf5b79
add_three= x-> x+3

# ╔═╡ b6e75ac7-840e-4bb7-a3b0-5020887f5e7b
add_three(5)

# ╔═╡ ad7c52a4-912b-48df-baf2-2ed933e34be6
md"we can also create $\textbf{Void Functions}$, which takes no argument, returns no value"

# ╔═╡ 3b0eafb8-d046-45b2-bfad-3926021455a1
function print_myname()
	 "narayan"
end

# ╔═╡ 285c5abb-1bbc-412d-af25-6dc8ffdda62f
print_myname()

# ╔═╡ 2679e46e-bdd0-4ec5-8af8-3bcb60af65f9
md"\$\textbf{Optional Positional Argument}$"

# ╔═╡ 9a96776b-1b56-4e90-9a75-153f38dfb872
md" we can specify default value of some parameter, which we don't want to type each time. It is called positional argument"

# ╔═╡ 5bdfcb1a-a4fb-42f0-9f43-a5caf55287b8
md"We take an example: We write a fucntion which converts our weight on earth to weight on other planet. here we use $\textrm{g}$ as positional argument"

# ╔═╡ afb270cf-794f-434a-81a1-4b25aa33c87d
function myweight(weightonearth,g=9.8)
	return weightonearth*g/9.8
end

# ╔═╡ efc519cc-e2be-4aa1-a082-fd9c79c4be59
myweight(50)

# ╔═╡ ae9685f9-a78c-46fa-b6a6-6ec222169035
md"now let's calculate weight on moon. g for moon is 1.625"

# ╔═╡ e5eae63d-6cbe-4581-ab41-b40c3d97a73a
myweight(50,1.625)

# ╔═╡ 553df1cd-991c-483d-8218-231c0abf46d8
#function myweight(g=9.8,weightonearth)
#	return weightonearth*g/9.8
#end

# ╔═╡ 7e5219d0-bec6-4969-92a2-0b7e18b7b3dc
md"as name suggests we can't define positional argument before. Order is important here"

# ╔═╡ b9c2050a-67d6-4265-b3c4-363cafc254ae
md" $\textbf{Keyword Arguments}$"

# ╔═╡ e88cc18c-2d80-45c1-9634-35fce0a5f0b3
md"If we want to use these optional arguments with no fixed positions, we have to use 'Keyword Argument'."

# ╔═╡ 15454ea9-a4c6-4ef6-b20b-76eccda0798f
md" keyword argument always need to specified while calling a function, and positonal arguments are optional. keyword and positional arguments are separated by '$\textbf{;}$' "

# ╔═╡ a1d2e23e-1c8b-4107-ae1e-a5f4133db327
function new_func(a,c=1;b,d=3)
	return a+b+c+d
end

# ╔═╡ 8ace847e-e6c5-4011-9f51-bd1496237670
methods(new_func)

# ╔═╡ bfde96d6-8912-4fa5-8c31-40e51d50cdf4
new_func(1,2,d=3,b=3)

# ╔═╡ 74a2a4bc-40b9-41df-a198-6c206d84bf3e
md"for high performance always use 'positional arguments'"

# ╔═╡ Cell order:
# ╟─68f8fbb0-bd60-11eb-0615-63092ea78353
# ╟─9a49c54a-5c3e-4a36-9bf2-92f2d5c8d9eb
# ╟─1440b40f-2436-4443-8f35-707366c97834
# ╠═7d81458a-02e1-4021-9395-b477824143f0
# ╠═18ca6be4-daff-458e-a03f-d01854ba0f87
# ╠═1750cacf-0fa3-4c70-832a-5538034fa24c
# ╠═c3f595b5-583a-4aa7-8bdb-356765a194c4
# ╠═652b9a32-06ce-4cc6-861e-30a7138cc2c3
# ╠═5c111f15-59fd-4b1f-b9bf-40109b6e2b17
# ╟─ade47a6e-2197-48b7-843f-db5ee61bfddf
# ╟─8f6cbb24-a041-498e-8971-5f705d7cd4ee
# ╠═1e9eee2a-d79e-4118-be78-bd8ebcc24057
# ╠═17d61d46-cd2a-45e3-99e6-234d7ab4d08f
# ╠═cc533e23-f8d8-40c1-a0bf-70fc89074156
# ╠═d654c520-b696-43a2-afba-45143477c83c
# ╠═1f8d8b21-37a5-42ee-8f84-37628b319243
# ╠═d01c6282-17d7-4d2a-a6a4-c57c59b76dcd
# ╟─ddace2eb-c16d-4eae-9091-7ebf64c2c5d9
# ╠═ee0c422e-6d13-4b83-b03d-5006c4c0fef6
# ╟─bb095640-e1b5-42fe-9e5f-7c21d9b76c66
# ╠═03ac3f2e-8084-4b67-8439-7387589a10c9
# ╠═1c90fd7b-fe2f-4cf2-ba1c-2c0142ff649d
# ╟─165f1d61-799c-4970-868a-826986cb060c
# ╟─1ec34206-c40b-42b7-874a-2099852f2406
# ╠═e433ac26-df3d-4767-80be-ad574f2da810
# ╟─0bbdcf31-31fb-4ef3-9d62-f78f4bbf2d9e
# ╠═d592f435-45c9-4bdc-bf91-1c9a28aa0684
# ╠═64158717-4562-45ee-96cd-380ab391e429
# ╟─21968201-ca39-476c-a3ec-c09c0c8bb7ad
# ╠═f368ec4e-949f-442d-ade3-639e565e21c1
# ╠═5bfe100f-d8bc-4297-88b5-e1cfc25c21df
# ╟─3936aa73-8a98-4452-85f8-803fbaf34a05
# ╠═5dd8af76-0b11-405f-821a-6cd8ebbf5b79
# ╠═b6e75ac7-840e-4bb7-a3b0-5020887f5e7b
# ╟─ad7c52a4-912b-48df-baf2-2ed933e34be6
# ╠═3b0eafb8-d046-45b2-bfad-3926021455a1
# ╠═285c5abb-1bbc-412d-af25-6dc8ffdda62f
# ╟─2679e46e-bdd0-4ec5-8af8-3bcb60af65f9
# ╟─9a96776b-1b56-4e90-9a75-153f38dfb872
# ╟─5bdfcb1a-a4fb-42f0-9f43-a5caf55287b8
# ╠═afb270cf-794f-434a-81a1-4b25aa33c87d
# ╠═efc519cc-e2be-4aa1-a082-fd9c79c4be59
# ╟─ae9685f9-a78c-46fa-b6a6-6ec222169035
# ╠═e5eae63d-6cbe-4581-ab41-b40c3d97a73a
# ╠═553df1cd-991c-483d-8218-231c0abf46d8
# ╟─7e5219d0-bec6-4969-92a2-0b7e18b7b3dc
# ╟─b9c2050a-67d6-4265-b3c4-363cafc254ae
# ╟─e88cc18c-2d80-45c1-9634-35fce0a5f0b3
# ╟─15454ea9-a4c6-4ef6-b20b-76eccda0798f
# ╠═a1d2e23e-1c8b-4107-ae1e-a5f4133db327
# ╠═8ace847e-e6c5-4011-9f51-bd1496237670
# ╠═bfde96d6-8912-4fa5-8c31-40e51d50cdf4
# ╟─74a2a4bc-40b9-41df-a198-6c206d84bf3e
