class First < BaseScreen
    def verifica_tela
        actual_screen ('first')
    end

    def click_b
        click_button ('button')
    end
end