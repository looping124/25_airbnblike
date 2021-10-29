class Lodgment < ApplicationRecord
  belongs_to :city
  belongs_to :owner, class_name: "User"
  
  has_many :reservations
  has_many :guests, class_name: "User", through: :reservations
end
