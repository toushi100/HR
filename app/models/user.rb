class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    # validates! :name, length: { maximum: 15} ,presence: true
    # validates! :email,:uniqueness => {:case_sensitive => false} ,presence: true
    # validates! :passward,presence: true


end

# user = User.new
# user.name = "Ahmed"
# user.name = "Ali"
# user.save