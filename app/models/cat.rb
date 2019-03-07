require 'date'
require 'time'
class Cat < ApplicationRecord

    COLOR = ["black",
            "brown",
            "grey",
            "white"]

    validates :birth_date, :name, :description, presence: true  
    validates :color, presence: true, inclusion: COLOR
    validates :sex, presence: true, inclusion: ["M", "F"]

    has_many :cat_rental_requests,
        class_name: :CatRentalRequest,
        foreign_key: :cat_id,
        dependent: :destroy
   
   
   
   
   
    def age
        birthdate = self.birth_date
        cat_yr = birthdate.year
        now = Time.now
        age = now.year - cat_yr
        age
    end

    
end
