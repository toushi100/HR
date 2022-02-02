class Team < ApplicationRecord
    validates! :name, length: { minimum: 2 ,maximum: 15} ,presence: true
    validates! :description, length: { minimum: 20} ,presence: true
    validates! :members ,presence: true
    validates! :team_lead ,presence: true

    belongs_to :Division
    has_many :Employees
    has_many :Targets
end