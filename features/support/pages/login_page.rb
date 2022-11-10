class LoginPage
    include Capybara::DSL

    def go
        visit "/"
    end

    def access(email, pass)
        find("input[name=email]").set email
        find("input[name=password]").set pass
        click_button 'Entrar'
    end

    def alert
        find('.card-body .alert-dismissible span').text
    end
end