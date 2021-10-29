class User < ApplicationRecord
  has_many :reservations
  has_many :owned_lodgments, foreign_key: 'owner_id',class_name: "Lodgment"
  has_many :rented_lodgments, foreign_key: 'guest_id',class_name: "Lodgment", through: :reservations
  validates :email,
  presence: true,
  uniqueness: true,
  format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
end
