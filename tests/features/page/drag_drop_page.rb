=begin
This page is not being used. It's only to show
the Page Object Model pattern using SitePrism
=end
class DragDrop < SitePrism::Page
    set_url 'iteracoes/draganddrop'
    element :smileyFace, '[id="winston"]'
    element :dropzone, '[id="dropzone"]'

    def drag_and_drop
        smileyFace.drag_to(dropzone)
    end
end