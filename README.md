# Guia de Comandos

---

### Comandos Básicos:

- `cd {nome_da_pasta}`: Entra em uma pasta.
- `ls`: Mostra os arquivos e pastas presentes dentro da pasta atual.

---

### Comandos Gerais:

- `vagrant --version`: Mostra a versão do Vagrant instalada.
- `git --version`: Mostra a versão do Git instalada.
- `git config --global user.name "LuanBagioCompagnoni"`: Configura o nome de usuário global para o Git como "LuanBagioCompagnoni".
- `git config --global user.email "luancmpg@gmail.com"`: Configura o e-mail global para o Git como "luancmpg@gmail.com".
- `git clone https://github.com/iskailer/rails-ini.git`: Faz uma cópia dos arquivos do repositório do GitHub.
- `cd rails-ini`: Entra na pasta "rails-ini".
- `vagrant plugin install vagrant-vbguest`: Instala o plugin "vagrant-vbguest" no Vagrant. (OBS: Este plugin mantém as Guest Additions atualizadas nas máquinas virtuais Vagrant, melhorando a integração entre a máquina hospedeira e a virtual).
- `vagrant init GuiDev/Ubuntu-Rails5x --box-version 1.0.0`: Inicia um novo Vagrantfile, especificando a imagem base e sua versão.
- `vagrant up`: Liga a máquina virtual.
- `vagrant suspend`: Pausa a máquina virtual.
- `vagrant halt`: Desliga a máquina virtual.
- `vagrant ssh`: Cria um túnel de conexão SSH com a máquina virtual, permitindo a execução de comandos nela.

---

### Comandos Ruby e Rails:

- `Ruby -v`: Mostra a versão do Ruby.
- `Rails -v`: Mostra a versão do Rails.
- `psql --version`: Mostra a versão do Postgres.
- `rvm list`: Lista todas as versões do Ruby instaladas através do RVM.
- `rvm list known`: Mostra todas as versões do Ruby conhecidas e disponíveis para instalação.
- `rvm install 2.3`: Instala a versão 2.3 do Ruby.
- `rvm use 2.6`: Seleciona a versão 2.6 para uso.

---

### Comandos do Rails:

- `rails new {nome_do_projeto}`: Cria um novo projeto Rails com a estrutura inicial.
- `rails server` ou `rails s`: Inicia o servidor web com configurações padrões (porta 3000 por padrão).
- `rails s -b 0.0.0.0`: Inicia a aplicação web permitindo acesso de outras máquinas na mesma rede.
- `rails _5.2_ new {nome_do_programa}`: Cria um projeto na versão 5.2 do Rails com o nome especificado.
- `rails _5.2_ new {nome_do_programa} -d postgresql`: Cria um projeto com a configuração para usar o banco de dados PostgreSQL (é necessário ter o PostgreSQL instalado).
- `rails generate scaffold {nome_do_model} {campo:tipo} {campo:tipo} …`: Cria um modelo Ruby com controllers, views e migrations do banco, facilitando a criação de tabelas.
- `rails dbconsole` ou `rails db`: Inicia o console interativo do banco de dados.
- `rails -T`: Lista todas as tarefas disponíveis no projeto Rails.
- `rails -T db`: Lista tarefas relacionadas ao banco de dados.
- `RAILS_ENV=production rails s -b 0.0.0.0`: Define a variável de ambiente RAILS_ENV como "production" antes de iniciar o servidor Rails.
- `rails s -b 0.0.0.0 -e production`: Especifica que o servidor deve executar em ambiente de produção.
- `rails generate {tipo_do_componente} {nome_do_controller}` ou `rails g {tipo_do_componente} {nome_do_controller}`: Gera um controlador com o nome especificado.
- `rails g controller welcome index`: Gera um controlador chamado "Welcome" com uma ação chamada "index", criando o arquivo do controlador e a visão "index.html.erb".
- `rails destroy {tipo_do_componente} {nome_do_controller}` ou `rails d {tipo_do_componente} {nome_do_controller}`: Remove um controlador com o nome especificado.

---
