class User < ApplicationRecord
    validates! :name, length: { minimum: 2 ,maximum: 15} ,presence: true
    validates! :email,:uniqueness => {:case_sensitive => false} ,presence: true
    validates! :passward,format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create },presence: true


end

# user = User.new
# user.name = "Ahmed"
# user.name = "Ali"
# user.save