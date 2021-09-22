# m2y


1) Escreva um método que dado um inteiro x, um inteiro y e um inteiro w retorne todos os
   números divisíveis por w entre x e y.

<p align="center">
  <h3>def divisor(num_x, num_y, num_w) 
				(num_x..num_y).select {|n| n % num_w == 0 }  rescue ZeroDivisionError
	  	end
  </h3>
</p>


2) Em um sistema web, cada usuário pode se inscrever em diversos eventos, cada evento
	 possui até 3 prêmios que são distribuídos entre os usuários presentes. O sistema precisa
	 guardar a informação sobre quem participou de cada evento e quem ganhou os prêmios.
	 Modele um banco de dados capaz de suportar essas regras.

<p align="center">
  <h3>class User < ApplicationRecord
				has_many :events
				has_many :awards, through: :events
			end
			class Event < ApplicationRecord
				belongs_to :user
				has_many :award
			end
			class Award < ApplicationRecord
				belongs_to :event
				belongs_to :user
			end 
	</h3>
</p>


3) Considere um sistema onde cada Usuário possui os atributos nome (String), idade
	 (Inteiro) e profissão (String). Faça uma query que retorne o nome de todos os usuários com
	 idade maior ou igual à 18 anos e cuja profissão seja programador ou desenvolvedor

<p align="center">
  <h3>
			User.where('age >= 18').where(profession: %w[programador desenvolvedor])
	</h3>


5) Quais são as vantagens/desvantagens de se usar a arquitetura MVC (Model, View e
	 Controller)?

## Vantagens
		- particionamento em camadas no modelos de pastas
		- adaptabilidade de utilizar o padrão MVC em vários tipos de projeto, desktop, mobile e web.
		- possibilita separar interface do usuário das regras de negócios
		- reutilização de códigos, principalmente em projetos diferentes
		- fácil compreensão e manutenção dos app
		- criação e reutilização de templates sem alterar muito na regra de negócio

## Desvantagem
		- a complexidade de entendimento inicial do conceito.


6) Usando Ruby on Rails, cite pelo menos uma forma de criar uma rota para um método
	 chamado find_user dentro de um controller com o nome UsersController.

		get 'users/:id', to: 'users#find_user'


7) Considerando a estrutura padrão de arquivos de um projeto feito com Ruby on Rails, em
	 quais pastas devem se encontrar os models, os controllers e as views de um projeto? De
	 que modo é possível saber qual controller é responsável por gerenciar uma determinada
	 view?

		Devido ao princípio da Convention over Configuration (convenção sobre configuração), que o Rails tambem oferece,
		a arquitetura das pastas fica padronizada facilitando a organização dos códigos e a maneira de trabalhar, para o MVC 
		nos temos os seguintes endpoints
		Model       app/models/nome_do_model.rb
		Controller  app/controllers/nome_do_controler_controller.rb 
		View        app/views/nome_do_controler/método_do_controler.html.erb

		Seguindo a configuração do rails dentro da pasta view tem a pasta com o nome do controller onde dentro da pasta existe
		template para cada método.


# ✨ Links
[Linkedin](https://www.linkedin.com/in/andretorresdeveloper/)
[github](https://github.com/andre-dan)

# 🌎 Contacts
[Phone1](85 996195301)
[Phone1](85 986662310)
[Email](andrerndc@gmail.com)
