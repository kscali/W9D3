class CatRentalRequest < ApplicationRecord
    validates :start_date, :end_date, presence: true
    validates :status, presence: true, inclusion: ["PENDING", "APPROVED", "DENIED"]
  

    belongs_to :cat, 
      class_name: :Cat,
      foreign_key: :cat_id

    def overlapping_requests
      CatRentalRequest
      .where("cat.id = ?", self.cat_id)
      .where.not("start_date > #{self.end_date} OR end_date < #{self.start_date}")
    end 

  
end
