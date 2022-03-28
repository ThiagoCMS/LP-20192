class Veiculo:
    n_rodas = {"carro": 4, "moto": 2}

    def __init__(self, veiculo):
        self.__veiculo = veiculo
        self.__rodas = Veiculo.n_rodas[veiculo]

    def imprimir_numero_rodas(self):
        print(str(self.__rodas) + " rodas")


while True:
    print("\nVeiculos validos: carro e moto")
    veiculo_input = input("Tipo de veiculo: ")
    if veiculo_input == "sair":
        break
    try:
        veiculo = Veiculo(veiculo_input)
        veiculo.imprimir_numero_rodas()
    except KeyError:
        print("Digite apenas um dos veiculos validos")
