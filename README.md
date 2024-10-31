# Projeto de Automação de Testes - Login na Plataforma Alura

Este projeto realiza testes automatizados de login na plataforma Alura utilizando `Cucumber`, `Capybara` e `Selenium WebDriver`.

## Tecnologias Utilizadas

- **Ruby**: Linguagem de programação para escrever os testes.
- **Cucumber**: Framework para BDD (Behavior Driven Development).
- **Capybara**: Biblioteca que simula a interação com o navegador.
- **Selenium WebDriver**: Driver do navegador para execução dos testes.

## Pré-requisitos

- **Ruby** (2.7 ou superior)
- **Chromedriver** (para controlar o navegador Chrome)
- **Google Chrome** (versão atual)

### Instalação do Projeto

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/usuario/repositorio.git
   cd repositorio
   ```

2. **Instale as dependências**:
   ```bash
   bundle install
   ```

## Estrutura do Projeto

- `features/`: Diretório onde ficam os arquivos de especificação de cenários em BDD.
  - `login.feature`: Especificação do cenário de login.
- `step_definitions/`: Diretório com os arquivos Ruby que implementam os passos (`steps`) dos cenários.
  - `steps.rb`: Implementação dos passos para o login.
- `support/`: Arquivos de configuração.
  - `env.rb`: Configuração do Capybara e Selenium WebDriver.

## Executando os Testes

Para executar os testes, use o comando abaixo no terminal, dentro da pasta do projeto:

```bash
cucumber
```

O comando executará os cenários descritos no arquivo `.feature` e apresentará o resultado no terminal.

## Configurações Importantes

- **Capybara**: Configurada para usar o `Selenium WebDriver` com o navegador Chrome.
- **Timeout**: Configuração de espera padrão de 10 segundos para os elementos serem carregados.

## Exemplos de Ajustes

- **Adicionar novos cenários**: Crie novos arquivos `.feature` em `features/` e descreva novos cenários.
- **Atualizar dados de login**: No arquivo `.feature`, substitua as informações na tabela de `Dado que eu tenha um usuário` para simular diferentes logins.
