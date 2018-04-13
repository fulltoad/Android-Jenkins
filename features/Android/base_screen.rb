class BaseScreen

    def actual_screen (screen_id)
        $driver.wait_true(5) {$driver.exists {$driver.find_element(:id, screen_id)}}
    end

    def click_button (button_id)
        b = $driver.find_element(:id, button_id)
        b.click
    end
end