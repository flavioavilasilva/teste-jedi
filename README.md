# APP-TESTE-JEDI

Este projeto é um desafio técnico para a empresa JEDI, onde foram solicitadas algumas novas implementações em um código já existente, sendo:
- Implementação de busca na listagem de municipes, podendo ser filtrados por nome completo;
- Refactorys foram feitos dentro do que era possível no tempo acordado (Melhoria em legibilidade de código, mais cenários de testes, dockerização ajustada...). 


Topics:
- Stack
- Pontape inicial
- Executando os testes com Rspec
- Executar a aplicação local
- Créditos

## Stack
Ruby 2.7.2
Rails 7.0.3
Docker

## Pontapé inicial

Para criar a iamgem do projeto, baseado no docker-compose do projeto, execute
```bash
docker-compose build
```

Crie o banco de dados da aplicação com
```bash
docker-compose run --rm web rails db:create
```

Rode as migrates
```bash
docker-compose run --rm web rails db:migrate
```

## Executando os testes com Rspec

Para executar os testes com o Rspec, basta executar o seguinte comando na raiz da aplicação:

```bash
docker-compose run --rm web bundler exec rspec
```

## Executar a aplicação local

```bash
docker-compose up
```
Sua aplicação estará disponivel no host localhost:3000

## Créditos

*Flavio Avila*<br>
flavio.avila.silva@outlook.com<br>
https://github.com/flavioavilasilva<br>
https://www.linkedin.com/in/flavio-avila-7775702b/
