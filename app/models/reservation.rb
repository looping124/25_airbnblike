class Reservation < ApplicationRecord
  belongs_to :rented_lodgment, class_name: "Lodgment"
  belongs_to :guest, class_name: "User"
end