class GitApp < SitePrism::Page
    set_url '/' 

    #Element for the TEXT of the first commit
    element :commitOne, 'body > div:nth-child(1) > div > div.sc-fnVYJo.bhaKnt > div > div.sc-dlnjPT.fKEvTq > span.sc-gtssRu.cyUHWB'

    #Elements for the CIRCLES the commits
    #Numbered from bottom to top of the application main page
    element :commitOneCircle, '#graph > svg > circle:nth-child(56)'
    element :commitTwoCircle, '#graph > svg > circle:nth-child(55)'
    element :commitThreeCircle, '#graph > svg > circle:nth-child(54)'
    element :commitFourCircle, '#graph > svg > circle:nth-child(53)'
    element :commitFiveCircle, '#graph > svg > circle:nth-child(52)'
    element :commitSixCircle, '#graph > svg > circle:nth-child(51)'
    element :commitSevenCircle, '#graph > svg > circle:nth-child(50)'
    element :commitEightCircle, '#graph > svg > circle:nth-child(49)'
    element :commitNineCircle, '#graph > svg > circle:nth-child(48)'
    element :commitTenCircle, '#graph > svg > circle:nth-child(47)'
    element :commitElevenCircle, '#graph > svg > circle:nth-child(46)'
    element :commitTwelveCircle, '#graph > svg > circle:nth-child(45)'
    element :commitThirteenCircle, '#graph > svg > circle:nth-child(44)'
    element :commitFourteenCircle, '#graph > svg > circle:nth-child(43)'
    element :commitFifteenCircle, '#graph > svg > circle:nth-child(42)'
    element :commitSeventeenCircle, '#graph > svg > circle:nth-child(42)'
    element :commitNineteenCircle, '#graph > svg > circle:nth-child(41)'
    element :commitTwentyCircle, '#graph > svg > circle:nth-child(40)'
    element :commitTwentyoneCircle, '#graph > svg > circle:nth-child(39)'
    element :commitTwentytwoCircle, '#graph > svg > circle:nth-child(38)'
    element :commitTwentythreeCircle, '#graph > svg > circle:nth-child(37)'
    element :commitTwentyfourCircle, '#graph > svg > circle:nth-child(36)'
    element :commitTwentyfiveCircle, '#graph > svg > circle:nth-child(35)'
    element :commitTwentysixCircle, '#graph > svg > circle:nth-child(34)'

    element :originCommit, 'body > div.ReactModalPortal > div > div > p > strong:nth-child(1)'
    element :targetCommit, 'body > div.ReactModalPortal > div > div > p > strong:nth-child(2)'

    element :mergeModal, 'body > div.ReactModalPortal > div > div'
    element :mergeMessage, '[name="message"]'
    element :closeBt, 'body > div.ReactModalPortal > div > div > div > button:nth-child(1)'
    element :submitBt, 'body > div.ReactModalPortal > div > div > div > button:nth-child(2)'

    def click_commit
        commitOne.click
    end

    def drag_commits
        commitOneCircle.drag_to(commitTwoCircle)
    end

    def write_message
        mergeMessage.set 'woops! update without where.'
    end

    def press_submit
        submitBt.click 
    end

    def press_close
        closeBt.click 
    end

=begin
    class GitAppModal < SitePrism::Section
        element :message, '#'
        element :close_button, '#'
        element :submit_button, '#'
    end
=end

end

