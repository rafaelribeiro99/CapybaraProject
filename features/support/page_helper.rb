#This is no longer necessary to track pages
Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each{|file| require file}

=begin
I created a Pages module in this PageHelper to create the object of each Page
This way i can access these objects using the methods from the Pages module
similar to a Singleton pattern
=end

module Pages
    def user
        @user ||= User.new
    end

    def dragDrop
        @dragDrop ||= DragDrop.new
    end

    def gitApp
        @gitApp ||= GitApp.new
    end

end