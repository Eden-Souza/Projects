# Desafio 4 - Azure Cognitive Search
## Utilizando o AI Search para Indexação e Consulta de Dados

### 1. Criando os Recursos Necessários
#### 1.1. Criar o Recurso no Azure AI Search
1. No portal do Azure, crie um recurso **Azure Cognitive Search**:
   - Escolha o **nome do recurso** (caso não tenha um já criado).
   - Defina o **nome do serviço**.
   - No campo **Pricing Tier**, selecione a versão **Basic**.
   - Clique em **Review + Create** e depois em **Create**.
   - Aguarde a criação do serviço.

#### 1.2. Criar o Recurso no Azure AI Service
1. Crie um novo recurso no **Azure AI Service**:
   - Escolha o **grupo de recursos** (pode ser o mesmo criado anteriormente).
   - Dê um **nome ao recurso**.
   - Em **Pricing Tier**, selecione **Standard S0**.
   - Marque o campo abaixo e clique em **Review + Create**.
   - Aguarde a criação.

#### 1.3. Criar uma Conta de Armazenamento
1. No portal do Azure, crie uma conta de armazenamento:
   - Escolha o **recurso** previamente criado.
   - Dê um **nome à storage account**.
   - Em **Performance**, mantenha como **Standard**.
   - Em **Redundância**, selecione **Locally Redundant Storage (LRS)**.
   - Clique em **Review + Create** e aguarde.

### 2. Configurando o Armazenamento
1. Entre no recurso de armazenamento criado.
2. Clique em **Upload**.
3. Ajuste as regras de segurança:
   - Acesse as **Configurações**.
   - Marque a opção **Permitir acesso anônimo ao Blob**.
   - Salve as alterações.

#### Criando um Contêiner
1. No recurso de armazenamento, acesse a aba **Containers**.
2. Clique em **+ Containers**:
   - Dê um nome ao contêiner seguindo o padrão da [documentação](https://microsoftlearning.github.io/mslearn-ai-fundamentals/Instructions/Labs/11-ai-search.html), sem traços (exemplo: `coffeereviews`).
   - Em **Nível de acesso anônimo**, selecione **Blob (acesso de leitura anônimo somente para blobs)**.
   - Caso não consiga alterar o nível de acesso, recarregue a página ou repita os passos de configuração.



3. Após criar o contêiner, clique em **Upload**:
   - Envie os 9 arquivos do tipo **.docx** (disponíveis na pasta zipada da documentação).
   - Clique em **Carregar**.

---

### 3. Configurando o Azure AI Search
#### 3.1. Importando os Dados
1. Acesse o recurso de busca no **Azure AI Search**.
2. Clique em **Importar Dados**:
   - Escolha a opção **Armazenamento de Blob do Azure**.
   - Configure o contêiner criado anteriormente:
     - Dê um nome à **Fonte de Dados**.
     - Selecione a **Cadeia de Conexão** com o contêiner.
   - Clique em **Próximo** até finalizar a configuração.
![image](https://github.com/user-attachments/assets/03220d55-3562-4089-b603-7f9a4193849b)

3. Após a configuração, clique novamente em **Importar Dados**:
   - Selecione o contêiner e clique em **Explorador de Pesquisa**.

Agora você poderá utilizar o armazenamento como diretório para pesquisas no Azure. À medida que o contêiner for atualizado, as pesquisas refletirão os novos dados automaticamente, sem necessidade de reconfiguração.

---

### 4. Adicionando Habilidades Cognitivas
1. No recurso de busca, selecione o armazenamento e clique em **Desanexar Serviço de IA**.
2. Marque a opção referente ao **serviço de IA criado anteriormente**.
3. Retorne a **Importar Dados**:
   - Adicione **Habilidades Cognitivas**.
   - Marque o serviço de IA na aba de **Enriquecimento**.
   - Ative os itens de enriquecimento disponíveis para sua assinatura.
  
![image](https://github.com/user-attachments/assets/96acb852-f02c-429e-bf35-0ecb573d844e)
     
4. Clique em **Personalizar Índice**:
   - Marque as opções adicionais desejadas para a pesquisa.
   - Continue até finalizar a configuração.

![image](https://github.com/user-attachments/assets/18022114-4f9a-444f-a95d-25dee8665142)

---

### 5. Realizando Pesquisas
Use o formato abaixo para realizar suas consultas:
```
  search=oqueudesejopesquisar:'termoquevouprocurar'
```
### **Exemplo**

```
  search=locations:'Chicago'
```

![image](https://github.com/user-attachments/assets/f5c46196-dc46-4e4e-af4c-9f1e438eaa43)

  A consulta retornará reviews relacionadas à cidade de Chicago.
  O conteúdo será exibido em formato JSON, com o campo content mostrando as informações de interesse.

### 6. Limitação com Análise de Sentimento
'
    Apesar de habilitar todas as opções de enriquecimento, a análise de sentimento pode não funcionar devido a limitações do serviço gratuito.
    Nesse caso, considere migrar para um plano pago para aproveitar todos os recursos. [Minha análise

Com essas configurações, você tem um sistema de busca robusto, integrado ao Azure, que permite pesquisas dinâmicas e automáticas sobre os dados armazenados! 🚀






!


