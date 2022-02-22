class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    # validates! :name, length: { maximum: 15} ,presence: true
    # validates! :email,:uniqueness => {:case_sensitive => false} ,presence: true
    # validates! :passward,presence: true
    after_create do |job|
      mailer(self)
    end
    def mailer(user)
      p"============================#{user}===================="
      WelcoomeMailer.with(user: user).welcome_mail(user.id).deliver_now
    end

    has_one_attached :avatar
end

# user = User.new
# user.name = "Ahmed"
# user.name = "Ali"
# user.save