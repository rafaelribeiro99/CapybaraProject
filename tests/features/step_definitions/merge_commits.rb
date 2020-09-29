#WHEN STATEMENTS
When('i drag a commit to another') do
    gitApp.load
    gitApp.commitOneCircle.drag_to(gitApp.commitTwoCircle)
    sleep(2)
  end

  When('i drag a commit to another with conflict') do
    gitApp.load
    gitApp.commitOneCircle.drag_to(gitApp.commitTwoCircle)
    sleep(2)
  end
  
  When('i write a merge message') do
    gitApp.write_message
  end
  
  When('i press the submit button') do
    gitApp.press_submit
  end

  When('i press the close button') do
    gitApp.press_close
  end
  
  
#THEN STATEMENTS
  Then('the will be merged and show a sucess message') do
    @msg = find(:xpath, '/html/body/div[3]/div/div/p[2]')
    expect(@msg.text).to eql 'Successfully merged!'
  end

  Then('the will be merged and show a error message') do
    @msg = find(:xpath, '/html/body/div[3]/div/div/p[2]')
    expect(@msg.text).to eql 'Merge not possible'
  end

  Then('the submit button will be disabled') do
    expect(gitApp.submitBt).to be_disabled
  end

  Then('the merge modal will close') do
    #expect(gitApp.mergeModal).to exist be_falsey # passes if actual is falsy (nil or false)
    expect(page).not_to have_button('Close')
  end

  Then('verify the merge description window commit hashs') do
    expect(gitApp.originCommit.text).to eql 'f9ca7a0'
    expect(gitApp.targetCommit.text).to eql 'a4f273f'
  end
  