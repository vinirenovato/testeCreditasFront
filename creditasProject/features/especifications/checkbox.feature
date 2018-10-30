#language: pt

@checkbox
Funcionalidade: Adicionar e remover ícone de checkbox
  - Eu como usuário.
  - Eu quero adicionar e remover um ícone de checkbox da página

  Contexto:
    Dado que estou na página de controles dinâmicos

  Cenario: Remover uma checkbox
    Quando eu clico no botão "remover"
    Então a checkbox é removida

  Cenario: Adicionar uma checkbox
    E que eu remova uma checkbox
    Quando eu clico no botão "adicionar"
    Então a checkbox é adicionada
    E eu clico na checkbox