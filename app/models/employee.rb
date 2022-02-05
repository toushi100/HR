class Employee < ApplicationRecord
    validates! :name, length: { minimum: 2 ,maximum: 15} ,presence: true
    validates! :email,:uniqueness => {:case_sensitive => false} ,presence: true
    validates! :job ,presence: true
    validates! :salary ,presence: true , numericality: true
    validates! :employee_status ,presence: true

    belongs_to :division
    belongs_to :team
end
