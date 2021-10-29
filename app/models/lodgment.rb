class Lodgment < ApplicationRecord
  belongs_to :city
  belongs_to :owner, class_name: "User"
  
  has_many :reservations, foreign_key: 'rented_lodgment_id'
  has_many :guests, class_name: "User", through: :reservations
end
