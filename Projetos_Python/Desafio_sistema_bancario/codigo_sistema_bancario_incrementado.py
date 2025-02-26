
class SistemaBancario:
    def __init__(self, limite_saque=3, limite_valor=500, agencia = '0001'):
        self.limite_saque = limite_saque
        self.limite_valor = limite_valor
        self.saldo = 0
        self.numero_saque = 0
        self.extrato = ''
        self.filtro_usuario = {}
        self.usuarios={}
        self.agencia = agencia
        self.numero_conta = 0

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
    
    def criar_usuarios(self):
        cpf = int(input('Coloque o cpf sem ponto. ex: 00000000000 \n'))
        if cpf not in self.filtro_usuario.keys():
            usuario= str(input('Digite o nome do usuario \n'))
            self.filtro_usuario[cpf]=usuario
            nome= str(input('Digite seu nome '))
            data_nascimento = input('Informe a sua data de nascimento (dd-mm-aaaa) ')
            endereco = input('Informe seu endereço (Logadouro, nro - bairro - cidade/sigla estado):')
            self.usuarios[cpf]=[usuario,{'nome':nome,'data-nascimento':data_nascimento,'endereco':endereco}]
            print('Usuario Criado com sucesso')
        else:
            print(f'Usuario cadastrado é {self.usuarios[cpf][0]}')
            print('Usuario já cadastrado neste cpf')
    def criar_conta(self):
        cpf = int(input('Coloque o cpf sem ponto. ex: 00000000000 \n'))
        if cpf in self.filtro_usuario.keys():
            usuario = self.filtro_usuario[cpf]
            agencia = self.agencia
            conta = self.numero_conta +1
            cadastro = {'Usuario':usuario,'Agencia':agencia, 'Conta':conta, 'Saldo': Saldo}
            self.numero_conta+=1
            return print(cadastro)
        else:
            print(f'CPF nao encontrado no sistema')     
    
    def operacao(self):
        menu = """
        [d] Depositar
        [s] Sacar
        [e] Extrato
        [q] Sair
        [nu] Novo Usuario
        [nc] Nova conta
        => """

        while True:
            operacao = input(menu)

            if operacao == "d":
                valor = float(input("Digite o valor para depósito: "))
                self.deposito(valor)

            elif operacao == "s":
                valor = float(input("Digite o valor para saque: "))
                self.saque(valor) 

            elif operacao == "e":
                self.movimentacoes()

            elif operacao == "q":
                print("Fim das movimentações. Obrigado por usar o Sistema Bancário BankEden!")
                break
            
            elif operacao =='nu':
                self.criar_usuarios()

            elif operacao =='nc':
                self.criar_conta()

            else:
                print("Operação inválida! Tente novamente.")

if __name__ == "__main__":
    conta = SistemaBancario()
    conta.operacao()
