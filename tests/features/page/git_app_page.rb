class GitApp < SitePrism::Page
    set_url '/' 
    #element :commitOne, '//*[@id="graph"]/svg/circle[24]'
    element :commitOne, 'body > div:nth-child(1) > div > div.sc-fnVYJo.bhaKnt > div > div.sc-dlnjPT.fKEvTq > span.sc-gtssRu.cyUHWB'
    element :commitOneCircle, '#graph > svg > circle:nth-child(56)'
    element :commitTwoCircle, '#graph > svg > circle:nth-child(55)'
    #element :commitOne, '[xpath="/html/body/div[1]/div/div[1]/div/div[24]/span[1]"]'
    #element :commitOne, '[class="sc-gtssRu cyUHWB"]'

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

