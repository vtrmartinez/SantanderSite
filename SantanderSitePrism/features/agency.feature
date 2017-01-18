#language: pt
#utf-8

Funcionalidade: Buscar Agências
	Eu como cliente do Santander
	Quero procurar uma agência dentro do Brasil
	Para saber suas informações de contato

	Cenario: Buscar agência por CEP válido
		Dado que eu esteja na home do site Santander
		Quando eu buscar agência pelo CEP
		Então aparecerá as agências disponíveis do CEP

	Cenario: Buscar agência por bairro
		Dado que eu esteja na home do site Santander
		Quando eu buscar agência no bairro
		Então aparecerá as agências disponíveis do bairro

	Cenario: Buscar agência por número da agência
		Dado que eu esteja na home do site Santander
		Quando eu buscar agência pelo número
		Então aparecerá a agência solicitada
	@teste
	Cenario: Buscar agência por minha rota
		Dado que eu esteja na home do site Santander
		Quando eu buscar agência pela rota de origem e rota de destino
		Então aparecerá as agências disponíveis no caminho entre as rotas
		# Quando eu clicar no menu inferior "Agência"
		# E clicar no link "Clique aqui"
		# E clicar na aba para buscar agência por minha rota
		# E preencher o CEP de origem
		# E clicar no botão para buscar agência pela rota de origem
		# E selecionar um endereço da rota de origem
		# E preencher o CEP de destino
		# E clicar no botão para buscar agência pela rota de destino
		# E selecionar um endereço da rota de destino
		# E clicar no botão para buscar agências no caminho
		# Então aparecerá as agências disponíveis no caminho entre as rotas
