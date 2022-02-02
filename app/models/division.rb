class Division < ApplicationRecord
    validates! :name, length: { minimum: 2 ,maximum: 15} ,presence: true
    validates! :email,:uniqueness => {:case_sensitive => false} ,presence: true
    validates! :job ,presence: true
    validates! :salary ,presence: true , inclusion: { in: 0..9 },numericality: true
    validates! :employment_status ,presence: true

    belongs_to :Division
    belongs_to :Team
end