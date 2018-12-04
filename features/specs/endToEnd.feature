Para nao resetar a sessao apos a execucao do cenario:
1- No arquivo env.rb, remova a require capybara/cucumber.
2- inclua as require capybara, capybara/dsl, capybara/rspec/matchers, selenium-webdriver
3- inclua World(Capybara::DSL) e World(Capybara::RSpecMatchers)

Fazer esta configuraca quando um cenario depender do anterior.