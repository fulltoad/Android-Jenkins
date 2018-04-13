Dado("que estou na tela inicial") do
  @page1 = First.new
  @page1.verifica_tela
  end
  
Dado("toco no botao {string}") do |string|
  @page1.click_b
end
  
Entao("sou direcionado para tela {int}") do |int|
  @page2 = Second.new
  @page2.verifica_tela
end