# CapybaraProject
The goal of this project is to run automated tests in a web based application using Ruby programming language. And also using Capybara, RSpec and SitePrism frameworks.

Dependencies:
- Ruby
https://rubyinstaller.org/downloads/
- Bundler
gem install bundler
- RSpec (used for assertions)
gem install rspec
- Capybara (used to simulated the real user in a application)
gem install capybara
- SitePrism (used for a cleaner and simpler use of Page Object Model pattern with Capybara)
gem install site_prism

# How to run

From project root folder:
- bundle install

From the /tests folder:
- bundle exec cucumber -t @testTag

# Tags
@GitApp
- Run all the tests

@MergeCommits
- Run all the tests from the Merge Commit feature

@ClickCommit
- Run all the tests from the Click Commit feature

It is possible to run individual test cases. Tags for individual test cases are in the test plan document.

# Reports
Reports will be generated as a HTML file and will be stored inside the 'report' folder inside the project
