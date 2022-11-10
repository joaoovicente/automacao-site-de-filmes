Before do
    @login_page = LoginPage.new
    @movie_page = MoviePage.new
    @sidebar = SideBarView.new

    page.driver.browser.manage.window.maximize
end

#criando before para executar um cenário com @login, sempre fazer login antes de executar os cenários
Before("@login") do
    @login_page.go
    @login_page.access("joao@miranda.com", "senha123")
end

After do |scenario|
    if scenario.failed?
        temp_shot = page.save_screenshot('log/image.png')
    end
end