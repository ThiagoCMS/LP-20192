n_rodas = {"carro": 4, "moto": 2}

while True:
    print("\nVeiculos validos: carro e moto")
    veiculo_input = input("Tipo de veiculo: ")
    if veiculo_input == "sair":
        break
    try:
        print(str(n_rodas[veiculo_input]) + " rodas")
    except KeyError:
        print("Digite apenas um dos veiculos validos")