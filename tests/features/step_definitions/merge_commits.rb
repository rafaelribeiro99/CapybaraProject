When('i drag a commit to another') do
    gitApp.load
    #gitApp.drag_commits
    gitApp.commitOneCircle.drag_to(gitApp.commitTwoCircle)

    # commitOne: f9ca7a0
    # commitTwo: a4f273f
    #@commitOneCircle = first(:css, '#graph > svg > circle:nth-child(56)')
    #@commitOneCircle.click
    #@commitTwoCircle = first(:css, '#graph > svg > circle:nth-child(55)')
    #@commitOneCircle.drag_to(@commitTwoCircle)
    sleep(3)
  end

  When('i drag a commit to another with conflict') do
    gitApp.load
    gitApp.commitOneCircle.drag_to(gitApp.commitTwoCircle)
    sleep(3)
  end
  
  When('i write a merge message') do
    gitApp.write_message
  end
  
  When('i press the submit button') do
    gitApp.press_submit
  end
  
  Then('the will be merged and show a sucess message') do
    @msg = find(:xpath, '/html/body/div[3]/div/div/p[2]')
    expect(@msg.text).to eql 'Successfully merged!'
  end

  Then('the will be merged and show a error message') do
    @msg = find(:xpath, '/html/body/div[3]/div/div/p[2]')
    expect(@msg.text).to eql 'Merge not possible'
  end
  