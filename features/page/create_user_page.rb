=begin
This page is not being used. It's only to show
the Page Object Model pattern using SitePrism
=end
class User < SitePrism::Page
    set_url 'users/new'
    element :name, '#user_name'
    element :lastname, '#user_lastname'
    element :email, '#user_email'
    element :address, '#user_address'
    element :university, '#user_university'
    element :job, '#user_profile'
    element :gender, '#user_gender'
    element :age, '#user_age'

    element :create, 'input[value="Criar"]'

    def register_user
        name.set 'Rafael'
        lastname.set 'Ribeiro'
        email.set 'rafael@gmail.com'
        address.set 'Street X'
        university.set 'UNIPE'
        job.set 'QA'
        gender.set 'Male'
        age.set '29'
        create.click
    end
end