var estados = ["AC": "Acre",
               "AM": "Amazonas",
               "PA": "Pará",
               "AP": "Amapa",
               "RO": "Rondônia",
               "RR": "Roraima",
               "PB": "Paraíba",
               "PE": "Pernambuco",
               "PI": "Piauí",
               "RN": "Rio Grande do Norte",
               "CE": "Ceará",
               "DF": "Distrito Federal",
               "MA": "Maranhão",
               "SE": "Sergipe",
               "RS": "Rio Grande do sul",
               "SC": "Santa Catarina",
               "PR": "Paraná",
               "SP": "São Paulo",
               "GO": "Goiais",
               "MG": "Minas Gerais",
               "MT": "Mato Grosso",
               "MS": "Mato Grosso do Sul",
               "ES": "Espirito Santo",
               "TO": "Tocantins",
               "BA": "Bahia",
               "AL": "Alagoas"]

var estadosComMaisDeOitoLetrasNoNome = Array<String>()

for (key, value) in estados {
    if value.count > 8 {
        estadosComMaisDeOitoLetrasNoNome.append(key)
    }
}

for i in estadosComMaisDeOitoLetrasNoNome {
    print("\(i) -> \(estados[i] ?? "")")
}

