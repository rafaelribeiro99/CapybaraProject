#WHEN STATEMENTS
When("i click in the commit one") do
    gitApp.load
    gitApp.commitOne.click
    #@commitOne = find(:xpath, '/html/body/div[1]/div/div[1]/div/div[24]/span[1]')
    #@commitOne.click
    sleep(1)
end

When("i click in the commit two") do
    gitApp.load
    gitApp.commitTwo.click
    #@commitTwo = find(:xpath, '/html/body/div[1]/div/div[1]/div/div[23]/span[1]')
    #@commitTwo.click
    sleep(1)
end


#THEN STATEMENTS
Then("the commit one git diff appears") do
    @commit = find(:xpath, '/html/body/div[1]/div/div[2]/div/div[1]/div[1]')
    expect(@commit.text).to eql 'Gemfile'
end

Then("the commit two git diff appears") do
    @commit = find(:xpath, '/html/body/div[1]/div/div[2]/div/div[1]/div[1]')
    expect(@commit.text).to eql 'lib/assets/.keep'
end