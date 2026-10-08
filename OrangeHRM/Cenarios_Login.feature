# language: pt
Funcionalidade: Autenticação de usuários no OrangeHRM
  Como usuário do sistema
  Quero realizar login com minhas credenciais
  Para acessar as funcionalidades permitidas

  Cenário: CT001 - Login com credenciais válidas
    Dado que estou na página de login do OrangeHRM
    Quando informo um usuário válido
    E informo a senha correta
    E clico no botão Login
    Então devo ser direcionado para o Dashboard

  Cenário: CT002 - Login com senha incorreta
    Dado que estou na página de login do OrangeHRM
    Quando informo um usuário válido
    E informo uma senha incorreta
    E clico no botão Login
    Então o sistema deve impedir o acesso
    E apresentar uma mensagem de credenciais inválidas

  Cenário: CT003 - Login com campos vazios
    Dado que estou na página de login do OrangeHRM
    Quando deixo o campo de usuário vazio
    E deixo o campo de senha vazio
    E clico no botão Login
    Então o sistema deve impedir o acesso
    E apresentar mensagens informando que
    os campos são obrigatórios
