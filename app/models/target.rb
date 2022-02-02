class Target < ApplicationRecord
    validates! :title, length: { minimum: 2 ,maximum: 15} ,presence: true
    validates! :description, length: { minimum: 20} ,presence: true
    validates! :start_date ,presence: true
    validates! :finish_date , presence: true
    validates! :team ,presence: true
    validates! :status ,presence: true


    belongs_to :Team

    def date_validation
        if self[:end_date] < self[:start_date]
          errors[:end_date] << "Error message"
          return false
        else
          return true
        end
      end
end