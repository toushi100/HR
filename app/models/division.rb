class Division < ApplicationRecord
    validates! :name, length: { minimum: 2 ,maximum: 15} ,presence: true
    validates! :description, length: { minimum: 20} ,presence: true
    validates! :teams ,presence: true
    validates! :manager ,presence: true

    # has_many :teams
    # has_one :employee
end