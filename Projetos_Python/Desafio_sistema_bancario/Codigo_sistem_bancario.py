class SistemaBancario:
    def __init__(self, limite_saque=3, limite_valor=500):
        self.limite_saque = limite_saque
        self.limite_valor = limite_valor
        self.saldo = 0
        self.numero_saque = 0
        self.extrato = ''

    def deposito(self, valor):
        if valor < 0:
            print('Operação não realizada, tente novamente')
        else:
            self.saldo += valor
            self.extrato += f'Depósito realizado no valor de R${valor:.2f} \n'
            print(f"Depósito realizado com sucesso! Saldo atual: R${self.saldo:.2f}")

    def saque(self, valor):
        if self.numero_saque >= self.limite_saque:
            print(f'Operação não realizada. Limite de {self.limite_saque} saques atingido.')
        elif valor > self.limite_valor:
            print(f'Operação não realizada. O limite por saque é de R${self.limite_valor:.2f}.')
        elif valor > self.saldo:
            print(f'Operação não realizada. O valor solicitado (R${valor:.2f}) é maior que o saldo disponível (R${self.saldo:.2f}).')
        else:
            self.saldo -= valor
            self.numero_saque += 1
            self.extrato += f'Saque realizado no valor de R${valor:.2f} \n'
            print(f"Saque realizado com sucesso! Saldo atual: R${self.saldo:.2f}")

    def movimentacoes(self):
        print('\n---------------------- EXTRATO ----------------------')
        print('Nenhuma movimentação realizada.' if not self.extrato else self.extrato)
        print(f'Saldo atual: R${self.saldo:.2f}')
        print('----------------------------------------------------')

    def operacao(self):
        menu = """
        [d] Depositar
        [s] Sacar
        [e] Extrato
        [q] Sair
        => """

        while True:
            operacao = input(menu).strip().lower()

            if operacao == "d":
                valor = float(input("Digite o valor para depósito: "))
                self.deposito(valor)

            elif operacao == "s":
                valor = float(input("Digite o valor para saque: "))
                self.saque(valor)  # CORRIGIDO: chamada da função de saque

            elif operacao == "e":
                self.movimentacoes()

            elif operacao == "q":
                print("Fim das movimentações. Obrigado por usar o Sistema Bancário!")
                break

            else:
                print("Operação inválida! Tente novamente.")


# Para iniciar automaticamente o código ao rodar o arquivo
if __name__ == "__main__":
    conta = SistemaBancario()
    conta.operacao()
