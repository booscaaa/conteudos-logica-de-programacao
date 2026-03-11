# Exercícios: Fluxo de Controle Escolha

Pratique a construção de menus e seleção de opções utilizando a estrutura `escolha`.

---

## 1. Identificação de Estação
Escreva um programa que receba o nome de um mês e informe a estação do ano predominante (considere o hemisfério sul).
- **Verão**: Dezembro, Janeiro, Fevereiro
- **Outono**: Março, Abril, Maio
- **Inverno**: Junho, Julho, Agosto
- **Primavera**: Setembro, Outubro, Novembro

## 2. Calculadora de Peso em Outros Planetas
Crie um programa que receba o peso de uma pessoa na Terra e uma opção de planeta. Calcule o peso aproximado nesse planeta:
1. **Mercúrio**: peso * 0.37
2. **Vênus**: peso * 0.88
3. **Marte**: peso * 0.38
4. **Júpiter**: peso * 2.64
5. **Saturno**: peso * 1.15

## 3. Classificação de Produtos
Um mercado utiliza códigos para organizar seus corredores. Implemente um programa que receba o código e informe o setor:
- **Código 1**: Alimentos não perecíveis
- **Código 2, 3 ou 4**: Alimentos perecíveis
- **Código 5 ou 6**: Vestuário
- **Código 7**: Higiene Pessoal
- **Código 8 até 15**: Limpeza e Utensílios Domésticos
- **Qualquer outro**: Código inválido

## 4. Conversor de Moedas
Crie um menu para converter Real (R$) para outras moedas:
1. **Dólar (USD)**
2. **Euro (EUR)**
3. **Libra (GBP)**
4. **Iene (JPY)**
*Dica: Solicite o valor em Real e a cotação do dia para a moeda escolhida.*

## 5. Menu de Restaurante
Crie o sistema de pedidos de uma lanchonete:
- **100**: Cachorro Quente - R$ 12,00
- **101**: Bauru Simples - R$ 13,00
- **102**: Bauru com Ovo - R$ 15,00
- **103**: Hambúrguer - R$ 12,00
- **104**: Cheeseburguer - R$ 17,00
- **105**: Refrigerante - R$ 5,00

O programa deve receber o código e a quantidade, calculando o valor total a ser pago.

---

### Desafio Extra
Tente implementar o exercício 3 utilizando apenas um bloco `escolha`. Lembre-se que em Portugol, você pode agrupar casos que fazem a mesma coisa (se a versão do Portugol Studio suportar):

```portugol
caso 2:
caso 3:
caso 4:
  escreva("Alimentos perecíveis")
  pare
```
