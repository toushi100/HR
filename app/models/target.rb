class DateValidator < ActiveModel::Validator
  def validate(record)
    if record.start_date > record.finish_date
      record.errors.add :base, "worng date"
    end
  end
end



class Target < ApplicationRecord
    validates! :title, length: { minimum: 2 ,maximum: 15} ,presence: true
    validates! :description, length: { minimum: 20} ,presence: true
    validates! :start_date ,presence: true
   # validates! :finish_date , comparison: { greater_than: :start_date } , presence: true
    validates_with DateValidator
    validates! :team ,presence: true
    validates! :status ,presence: true


    belongs_to :team

end

