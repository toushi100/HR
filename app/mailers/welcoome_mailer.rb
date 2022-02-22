class WelcoomeMailer < ApplicationMailer
    def welcome_mail(id)
        @user =  User.find(id)
        # UserMailer.with(user: user).welcome_mail
        mail(to:@user.email,subject: "Welcome "+@user.name)
    end
end
