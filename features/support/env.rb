require 'appium_lib'
require 'pry'

caps_path = File.join(File.dirname(__FILE__), '..', '..', 'caps', ENV['QA'], "#{ENV['PLATFORM']}.txt")

caps = Appium.load_appium_txt file: caps_path, verbose: true

Appium:: Driver.new caps, true


Before do
    $driver.start_driver
end

After do |scenario |
#    file_name = "screenshot_#{}.png"
#    $driver.screenshot(File.join("/Users/brunomelo/test/cucumber/screenshot", file _file_name)) if test
#    scenario.failed?
    $driver.driver_quit
end

#$driver.start_driver

#$driver.driver_quit

