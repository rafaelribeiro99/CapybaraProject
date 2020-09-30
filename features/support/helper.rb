#require 'fileutils'
module Helper

    def print_screen(file_name, result)
        file_path = "report/screenshots/test_#{result}"
        screenshot = "#{file_path}/#{file_name}.png"
        page.save_screenshot(screenshot)
        #embed(screenshot, 'image/png', 'Click here')
        attach(screenshot, 'image/png')
        #FileUtils.rm_rf(screenshot)
    end
end