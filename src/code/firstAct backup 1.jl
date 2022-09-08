
function cpf_test(cpf::String)
    #pattern = r"^([0-9]{3})\.([0-9]{3})\.([0-9]{3})\-([0-9]{2}$)"
    pattern = r"^(\d{3})\.(\d{3})\.(\d{3})\-(\d{2}$)"
    if match(pattern, cpf) == nothing
        println("CPF inválido")
    else
        println("Tudo certo")
    end
end


cpf = readline()
cpf_test(cpf)
