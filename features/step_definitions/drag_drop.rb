When("i drag the smiley face to the dropzone") do
    dragDrop.load
    #dragDrop.drag_and_drop

    @dragObject = find(:xpath, '/html/body/div[2]/div[2]/div[4]/div[2]/img')
    @dropzoneObject = find(:xpath, '/html/body/div[2]/div[2]/div[4]/div[3]/div')
    @dragObject.drag_to(@dropzoneObject)
 
    sleep(2)
end

Then("dropzone is colored in green") do
    puts 'Object was dragged'
end