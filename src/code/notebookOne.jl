### A Pluto.jl notebook ###
# v0.19.11

using Markdown
using InteractiveUtils

# ╔═╡ f0524004-2fa5-11ed-3d41-377983b12e3b
#Questão - 1
begin
	
	function cpf_test(cpf::String)
	    #pattern = r"^([0-9]{3})\.([0-9]{3})\.([0-9]{3})\-([0-9]{2}$)"
	    pattern = r"^(\d{3}).(\d{3}).(\d{3})-(\d{2}$)"
	    if match(pattern, cpf) == nothing
	        println("CPF inválido")
	    else
	        println("Válido")
	    end
	end
	
	cpf_list = ["606.840.080-84", "154.613.970.26", 
		"470.702.300-28", "470.72.300-28",
		"137.259.150-83eee", "137.259.150-83",
		"419-943.630-88", "62S.882.120-629", 
		"39.249.550-1", "641.596.400-36"]

	
	for cpf ∈ cpf_list
		cpf_test(cpf)
	end
end

# ╔═╡ ccec0bb7-0725-4205-8bf0-1d40b37e3f19
begin
	#Questão - 2
	
	function extract_addrx(str::String)
		pattern = r"(\d{3})"
		pattern = r"^(\w+\s*)+,(\s\d+),(\s\w+,)?(\s\w+,)?(\s\w+\s\d+-\d+.)(\s\w+),(\s\w+.)$"
		println(match(pattern, str))
	end
	
	addrs = ["Rua José da Silva, 346, Farol, CEP 57002-220. Maceió, AL.",
		"Rua da Consolação,",
		"Avenida Atlântica, 420, ap 1001, Copacabana, cep 22011-010. Rio de Janeiro, RJ."
	]

	for str ∈ addrs
		extract_addrx(str)
	end
end

# ╔═╡ d58ca052-4056-48a1-827e-b3cf24b92d44
#Questão - 3
let
	function match_url(str::String)
		pattern = r"^https?:\/\/(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b(?:[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)$"
		#print(pattern)
		println(match(pattern, str))
	end
	urls = ["http://www.ufal.com.br"]
	for str ∈ urls
		match_url(str)
	end
end

# ╔═╡ 3c0c27c9-545a-4103-84e2-68003742b5ab
#Questão - 5
let
	function match_url(str::String)
		pattern = r"(?<dd>\d+)/(?<mm>\d+)/(?<yyyy>\d+)"
		# print(pattern)
		str = replace(str, r"(?<dd>\d+)(/)(?<mm>\d+)(/)(?<yyyy>\d+)" => s"\g<mm>-\g<dd>-\g<yyyy>")

		return str
	end
	urls = ["09/09/2022", "20/01/1973"]
	for str ∈ urls
		println("R: $(match_url(str))")
	end
end

# ╔═╡ 91b01372-a11a-43d7-83e9-774172b5f356
begin
	#replace("first second", r"(\w+) (?<a>\w+)" => s"\g<a> \1")
	replace("09/05/2022", r"(?<dd>\d+)(/)(?<mm>\d+)(/)(?<yyyy>\d+)" => s"\g<mm>-\1-\g<yyyy>")
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0"
manifest_format = "2.0"
project_hash = "da39a3ee5e6b4b0d3255bfef95601890afd80709"

[deps]
"""

# ╔═╡ Cell order:
# ╠═f0524004-2fa5-11ed-3d41-377983b12e3b
# ╠═ccec0bb7-0725-4205-8bf0-1d40b37e3f19
# ╠═d58ca052-4056-48a1-827e-b3cf24b92d44
# ╠═3c0c27c9-545a-4103-84e2-68003742b5ab
# ╠═91b01372-a11a-43d7-83e9-774172b5f356
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
