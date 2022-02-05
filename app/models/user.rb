class User < ApplicationRecord
    validates! :name, length: { maximum: 15} ,presence: true
    validates! :email,:uniqueness => {:case_sensitive => false} ,presence: true
    validates! :passward,presence: true


end

# user = User.new
# user.name = "Ahmed"
# user.name = "Ali"
# user.save