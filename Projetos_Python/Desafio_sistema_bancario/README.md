# Sistema Bancário em Python: Programação Orientada a Objetos

Este projeto implementa um **sistema bancário simples** utilizando **Programação Orientada a Objetos (POO)**, que organiza o código de forma modular e facilita a manutenção e a expansão do sistema.

## ✨ **Por que usar POO?**

A POO é uma abordagem de programação que organiza o código em **objetos**. Esses objetos são instâncias de **classes** e podem interagir entre si, o que facilita a manutenção e escalabilidade do sistema. A seguir, explicamos cada parte do código e como a POO contribui para um código mais limpo e reutilizável.

## 🛠️ **Principais Conceitos e Funções**

### 1. **Classe: `SistemaBancario`**

A classe `SistemaBancario` representa o objeto principal do sistema, que contém todos os dados e comportamentos de uma conta bancária. Dentro dela, definimos as variáveis e funções que vão gerenciar o sistema.

### 2. **Construtor: `__init__`**

A função `__init__` é o **construtor** da classe, responsável por inicializar os dados da conta bancária. A função define:
- `limite_saque`: Limite máximo de saques permitidos.
- `limite_valor`: Valor máximo permitido para saque.
- `saldo`: O saldo atual da conta.
- `numero_saque`: Quantidade de saques realizados.
- `extrato`: O histórico de transações da conta.

A vantagem do uso do **construtor** é que ele permite criar objetos com valores iniciais definidos, tornando o sistema mais flexível e reutilizável.

### 3. **Método `deposito`**

A função `deposito` é responsável por adicionar um valor ao saldo da conta. Se o valor for negativo, o depósito não é realizado e uma mensagem de erro é exibida. Caso contrário, o valor é somado ao saldo, e a operação é registrada no extrato da conta.

A **validação** de entradas garante que os depósitos só ocorram com valores válidos, evitando erros na operação.

### 4. **Método `saque`**

A função `saque` permite ao usuário retirar valores da conta, desde que:
- O número de saques não tenha ultrapassado o limite definido.
- O valor do saque não ultrapasse o limite máximo estabelecido para saque.
- O saldo da conta seja suficiente para o saque.

Este método demonstra como o **controle de fluxos** e a **validação de dados** são essenciais para criar um sistema seguro e funcional.

### 5. **Método `movimentacoes`**

A função `movimentacoes` exibe o extrato da conta, ou seja, o histórico de depósitos e saques realizados. Se não houver movimentações, uma mensagem padrão é mostrada.

O **extrato** é um exemplo de como podemos armazenar e organizar informações de forma que o usuário tenha acesso a elas de maneira fácil e organizada.

### 6. **Método `operacao`**

A função `operacao` é o **menu principal** do sistema, onde o usuário pode escolher entre:
- **Depositar**: Realizar um depósito.
- **Sacar**: Realizar um saque.
- **Extrato**: Consultar o extrato.
- **Sair**: Encerrar a aplicação.

A interação com o usuário acontece de forma simples e eficiente, demonstrando como é possível organizar o fluxo de um programa com base nas ações do usuário.

### 7. **Execução**

Ao rodar o arquivo, a classe `SistemaBancario` é instanciada, e o menu interativo começa a rodar, permitindo que o usuário realize operações até decidir encerrar.

## 📋 **Benefícios da POO**

1. **Encapsulamento**: A POO permite esconder os detalhes internos de implementação e mostrar apenas o necessário para o usuário. Isso melhora a segurança e a usabilidade.
   
2. **Reusabilidade**: Como as classes podem ser reutilizadas em diferentes contextos, não é necessário reescrever o código para realizar tarefas similares. Isso economiza tempo e esforço.

3. **Facilidade de manutenção**: Com a POO, é mais fácil localizar e corrigir erros, adicionar novas funcionalidades ou modificar a implementação sem afetar outras partes do sistema.

4. **Modularização**: O sistema é dividido em classes e métodos, permitindo que cada parte do código tenha uma responsabilidade bem definida. Isso melhora a clareza e a organização do código.


