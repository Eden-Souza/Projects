# 🌟 Desafio 3: Speech to Text e Language Studio no AI-900

Este guia detalhado explica como realizar tarefas de **Conversão de Fala para Texto** e **Análise de Sentimento** usando os portais **Microsoft Speech** e **Language Studio**.

---

## 🛠️ Passo 1: Conversão de Fala para Texto

1. **Acesse o portal Speech Studio**  
   [Clique aqui para acessar](https://speech.microsoft.com/portal)  
   Faça login com sua conta Microsoft.

2. **Configuração do Recurso**  
   - Clique no ícone de engrenagem próximo ao nome da sua conta.  
   - Escolha ou crie um novo recurso. Aguarde até que o recurso seja criado com sucesso.  
   - Selecione o recurso criado e clique em **Usar Recurso**.

3. **Conversão de Fala para Texto**  
   - Clique na opção **Conversão de Fala para Texto**.  
   - Em seguida, selecione **Conversão de Fala para Texto em Tempo Real**.  
   - **Aceite os Termos**: Marque a opção confirmando que um recurso será usado.  
   - **Envie o Áudio**:  
     - Suba o arquivo de áudio para conversão.  
     - Selecione o idioma do áudio.  
   - Visualize a conversão gerada.

> **⚠️ Nota:** Certifique-se de usar um arquivo de áudio compatível com os formatos suportados.

![image](https://github.com/user-attachments/assets/d4edaa11-8bf3-4f38-b4ab-e4a930a0ab81)

---

## 🧪 Passo 2: Teste no Language Studio

1. **Criar Recurso de Language Service**  
   - No portal Azure, navegue até **AI + Machine Learning**.  
   - Escolha **Language Service** e clique em **Criar**.  
   - Preencha os seguintes campos:  
     - Nome do recurso.  
     - Nome da instância.  
     - Tier de preço.  
   - Marque o **Check Box** de confirmação e clique em **Criar**.  
   - Aguarde a finalização do deploy.

2. **Configurar o Language Studio**  
   - Acesse o portal: [Language Studio](https://language.cognitive.azure.com/home).  
   - Faça login com a mesma conta Azure usada na criação do recurso.  
   - Insira:  
     - Sua assinatura.  
     - O tipo de serviço: **Language**.  
     - O recurso criado anteriormente.  

3. **Análise de Sentimento**  
   - Navegue para a aba **Classify Text**.  
   - Selecione a opção **Analyse Sentiment and Mine Opinions**.  
   - Insira:  
     - Idioma do texto.  
     - O texto que deseja analisar.  
   - Marque o **Check Box** de confirmação e clique em **Run**.  
   - O resultado será exibido com detalhes das opiniões e sentimentos analisados.

![image](https://github.com/user-attachments/assets/194a87ec-88b2-4a36-815e-6b86dc66218a)

---

## 📈 Resultado Final

Ao finalizar o processo, você terá:  
- Uma transcrição detalhada do áudio convertido para texto.  
- Uma análise precisa do sentimento contido no texto, exibindo insights como **polaridade** e **opiniões** extraídas.
 

---

### 💡 Dicas Úteis
- **Formatos suportados**: Para áudio, use formatos compatíveis como `.wav` ou `.mp3`.  
- **Idiomas disponíveis**: Verifique a compatibilidade de idiomas para conversão e análise.  
- **Recursos Azure**: Lembre-se de monitorar o uso do recurso para evitar custos inesperados.

---

## 🔗 Links Importantes
- [Speech Studio](https://speech.microsoft.com/portal)  
- [Language Studio](https://language.cognitive.azure.com/home)  
- [Portal Azure](https://portal.azure.com)  
