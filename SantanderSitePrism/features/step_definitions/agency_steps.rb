Quando(/^eu buscar agência pelo CEP$/) do
  @app.agency.click_something("Agência")
  @app.agency.click_something("Clique aqui")

  @app.agency.last_window
  within_frame(@app.searchAgency.iframe) do
    @app.searchAgency.near.cep.set ADDRESS['NEAR']['CEP']
    sleep 1
    @app.searchAgency.near.search.click
    @app.searchAgency.near.address.select(ADDRESS['NEAR']['ADDRESS'])
  end
end

Quando(/^eu buscar agência no bairro$/) do
  @app.agency.click_something("Agência")
  @app.agency.click_something("Clique aqui")

  @app.agency.last_window
  within_frame(@app.searchAgency.iframe) do
    @app.searchAgency.neighborhood.neighborhoodTab.click
    @app.searchAgency.neighborhood.selectState.select(ADDRESS['NEIGHBORHOOD']['STATE'])
    @app.searchAgency.neighborhood.selectCity.select(ADDRESS['NEIGHBORHOOD']['CITY'])
    @app.searchAgency.neighborhood.selectNeighborhood.select(ADDRESS['NEIGHBORHOOD']['NEIGHBORHOOD'])
    @app.searchAgency.neighborhood.search.click
  end
end

Quando(/^eu buscar agência pelo número$/) do
  @app.agency.click_something("Agência")
  @app.agency.click_something("Clique aqui")

  @app.agency.last_window
  within_frame(@app.searchAgency.iframe) do
    @app.searchAgency.number.numberTab.click
    @app.searchAgency.number.agencyNumber.set ADDRESS['NUMBER']['AGENCY_NUMBER']
    @app.searchAgency.number.search.click
  end
end

Quando(/^eu buscar agência pela rota de origem e rota de destino$/) do
  @app.agency.click_something("Agência")
  @app.agency.click_something("Clique aqui")

  @app.agency.last_window
  within_frame(@app.searchAgency.iframe) do
    @app.searchAgency.route.routeTab.click
    @app.searchAgency.route.cepOrigin.set ADDRESS['ROUTE']['CEP_ORIGIN']
    sleep 1
    @app.searchAgency.route.searchOrigin.click
    @app.searchAgency.route.addressOrigin.select ADDRESS['ROUTE']['ADDRESS_ORIGIN']
    @app.searchAgency.route.cepDestiny.set ADDRESS['ROUTE']['CEP_DESTINY']
    sleep 1
    @app.searchAgency.route.searchDestiny.click
    @app.searchAgency.route.addressDestiny.select ADDRESS['ROUTE']['ADDRESS_DESTINY']
    @app.searchAgency.route.searchWay.click
  end
end

Então(/^aparecerá as agências disponíveis do CEP$/) do
  page.has_content?(ADDRESS['NEAR']['VERIFY_AGENCY'])
end

Então(/^aparecerá as agências disponíveis do bairro$/) do
  page.has_content?(ADDRESS['NEIGHBORHOOD']['VERIFY_AGENCY'])
end

Então(/^aparecerá a agência solicitada$/) do
  page.has_content?(ADDRESS['NUMBER']['VERIFY_AGENCY'])
end

Então(/^aparecerá as agências disponíveis no caminho entre as rotas$/) do
  page.has_content?(ADDRESS['ROUTE']['VERIFY_AGENCY'])
end
