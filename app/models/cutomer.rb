class Cutomer < ApplicationRecord
  validates :visit_date, presence: true
  validates :name, presence: true
  
end
