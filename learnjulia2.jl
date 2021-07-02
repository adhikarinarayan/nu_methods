### A Pluto.jl notebook ###
# v0.14.2

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ b884dc9f-4fa2-43b1-a39b-c9eec8b400c5
using Plots 

# ╔═╡ 70c4d930-a259-11eb-0cf2-5d716039bc75
md"lets simulate random walk for T steps"

# ╔═╡ 291a43fe-4d9b-4b90-b9f9-5ab33860260f
initialize()=0

# ╔═╡ 4275d9ad-19bd-4082-bfc7-c76b9b743460
random_jump()=rand((+1,-1))

# ╔═╡ 985273d1-4612-4598-ad26-deeb5f5831a2
move(x) = x+random_jump()

# ╔═╡ 35c19d17-c381-411a-ba34-02012b877eca
function walk(T)
	pos = initialize()
	
	trajectory = [pos]
	
	for t in 1:T
		new_pos = move(pos)
		push!(trajectory,new_pos)
		pos=new_pos
	end
	return trajectory
end

	

# ╔═╡ 2e1baaa4-dcc0-4010-8565-1a8f501c95ea
p=plot(legend=false)

# ╔═╡ 345a8372-dea1-4857-ada7-d2f7eba8a1ab
#@bind x html"<input type=range min=5 max=15>"

# ╔═╡ 975982bc-7116-419f-95b0-b1f802ecfc80
md"Generic Programming - We wrote our walk fucntion for 1d walker,we can change slight modification and it will for 2D also "


# ╔═╡ c91e0862-3c03-4ac2-8b95-31357ae775e4
initialize_2D() = [0,0]

# ╔═╡ 95f56cc1-b670-4d5b-a6ba-e52d42d4dfc8
move_2D(x) = [move(x[1]) ,  move(x[2])]  # note that without comma it will create an matrix,and that will throw an error


# ╔═╡ 9469585a-12de-4461-8bf5-066232045ffa


# ╔═╡ 5471f1ac-99c9-46cf-a305-69b519b8aa52
move_2D([0,0])

# ╔═╡ ba6b9f71-fd94-4330-ad61-e9ad417a5cb2

function walk(initialize, move, T)
    pos = initialize()
    
    trajectory = [pos]
    
    for t in 1:T
        pos = move(pos)               # *update* the value pointed to by `pos`
        push!(trajectory, deepcopy(pos))  # at the cost of needing to copy `pos` when we store it if it is a vector
    end
    
    return trajectory
end

# ╔═╡ c357f43e-052f-4384-82aa-623126c764d6
walk(100)

# ╔═╡ dcc1cd10-2b6f-474c-997a-98dd5c7bf5cf
begin
for i in 1:5
	plot!(walk(100))
end
plot!()
end

# ╔═╡ 3bd5706e-b509-4699-964e-0f8b9ca544e3

trajectory = walk(initialize_2D, move_2D, 10)

# ╔═╡ Cell order:
# ╟─70c4d930-a259-11eb-0cf2-5d716039bc75
# ╠═35c19d17-c381-411a-ba34-02012b877eca
# ╠═291a43fe-4d9b-4b90-b9f9-5ab33860260f
# ╠═4275d9ad-19bd-4082-bfc7-c76b9b743460
# ╠═985273d1-4612-4598-ad26-deeb5f5831a2
# ╠═c357f43e-052f-4384-82aa-623126c764d6
# ╠═b884dc9f-4fa2-43b1-a39b-c9eec8b400c5
# ╠═2e1baaa4-dcc0-4010-8565-1a8f501c95ea
# ╠═345a8372-dea1-4857-ada7-d2f7eba8a1ab
# ╠═dcc1cd10-2b6f-474c-997a-98dd5c7bf5cf
# ╟─975982bc-7116-419f-95b0-b1f802ecfc80
# ╠═c91e0862-3c03-4ac2-8b95-31357ae775e4
# ╠═95f56cc1-b670-4d5b-a6ba-e52d42d4dfc8
# ╠═9469585a-12de-4461-8bf5-066232045ffa
# ╠═5471f1ac-99c9-46cf-a305-69b519b8aa52
# ╠═ba6b9f71-fd94-4330-ad61-e9ad417a5cb2
# ╠═3bd5706e-b509-4699-964e-0f8b9ca544e3
