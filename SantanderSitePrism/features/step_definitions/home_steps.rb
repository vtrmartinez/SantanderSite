Dado(/^que eu esteja na home do site Santander$/) do
  @app = App.new
  @app.home.load
end
