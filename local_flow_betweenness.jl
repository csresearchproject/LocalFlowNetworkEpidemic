using SparseArrays
using Random
using CPUTime
using Printf

function local_flow_betweenness(nodes::Vector{Int},
			edges::Vector{Tuple{Int,Int}};
			locality_index::Real=0.1, filename=nothing,)
	ll = get_ll(nodes, edges)
	return local_flow_betweenness(ll, locality_index=locality_index,
			filename=filename, edges=edges)
end


function local_flow_betweenness(ll::Vector{Vector{Int}};
			locality_index::Real=0.1, filename=nothing, edges=nothing)

    n = length(ll)
    degree = Int[length(ll[i]) for i in 1:n]
    vol = sum(degree)
	if isnothing(edges)
		m = Int(vol/2)
		edges = get_edges(ll, n, m)
	end
    seed_mass = Float64(locality_index*vol)
    height = Vector{Float64}(undef, n)
    mass = Vector{Float64}(undef, n)
    score = Dict{Tuple{Int,Int},Float64}(e => 0.0 for e in edges)

    t1 = CPUtime_us()
    for seed = 1:n
        if degree[seed] == 0
            continue
        end
	    if seed % 100 == 0
	        print("Processd: ", seed)
            println(". CPU time elapsed: ", runtime)
	    end
        l2diffusion!(ll, degree, seed, seed_mass, height, mass)
        nzind = findall(!iszero, mass)
        update_score!(ll, nzind, height, score)
        t2 = CPUtime_us()
        global runtime = (t2 - t1)/1e6
        if runtime > 3600*24
            break
        end
    end

    println("Computation finished. Total running time: ", runtime)

    norm = n*seed_mass
	for e in edges
		score[e] /= norm
	end

	if !isnothing(filename)
    	open(filename, "w") do f
        	for e in edges
            	@printf(f, "%.10f\n", score[e])
        	end
    	end
	end

    return score, runtime
end

function l2diffusion!(ll::Vector{Vector{Int}}, degree::Vector{Int}, seed::Int,
			seed_mass::Float64, height::Vector{Float64}, mass::Vector{Float64};
			itrs::Int=1000, tol::Float64=1.0e-2)

    fill!(height, 0.0)
    fill!(mass, 0.0)
    mass[seed] = seed_mass
    S = Int[seed]
    for k in 1:itrs
        C = [v for v in S if mass[v] > degree[v] + tol]
        if isempty(C)
            break
        end
        for v in shuffle!(C)
            push = (mass[v] - degree[v])/degree[v]
            height[v] += push
            mass[v] = degree[v]
            for u in ll[v]
                if mass[u] == 0
                    push!(S,u)
                end
                mass[u] += push
            end
        end
    end
    return nothing
end

function update_score!(ll, nzind, height, score)
    for i in nzind
        for j in ll[i]
            if j > i
                score[(i,j)] += abs(height[i] - height[j])
            end
        end
    end
end

function get_edges(ll, n::Int, m::Int)
    edges = Vector{Tuple{Int,Int}}(undef, m)
    ct = 0
    for i = 1:n
        for j in ll[i]
            if j > i
                ct += 1
                edges[ct] = (i,j)
            end
        end
    end
    @assert(ct == m)
    return edges
end

function get_ll(nodes::Vector{Int}, edges::Vector{Tuple{Int,Int}})
	@assert(minimum(nodes) == 1)
    @assert(maximum(nodes) == length(nodes))
    ll = [Int[] for _ in nodes]
    for (u,v) in edges
        push!(ll[u], v)
        push!(ll[v], u)
    end
    return ll
end
