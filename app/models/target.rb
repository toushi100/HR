class Target < ApplicationRecord
    validates! :title, length: { minimum: 2 ,maximum: 15} ,presence: true
    validates! :description, length: { minimum: 20} ,presence: true
    validates! :start_date ,presence: true
    validates! :finish_date , presence: true, date: { after_or_equal_to:  :start_date}
    validates! :team ,presence: true
    validates! :status ,presence: true


    belongs_to :Team
end