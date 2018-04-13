require 'appium_lib'
require 'pry'

caps_path = File.join(File.dirname(__FILE__), '..', '..','appium.txt')

caps = Appium.load_appium_txt file: caps_path, verbose: true

Appium:: Driver.new caps, true


Before do
    $driver.start_driver
end

After {$driver.driver_quit}

#$driver.start_driver

#$driver.driver_quit