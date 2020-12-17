class Property < ApplicationRecord
  belongs_to :user
  has_one_attached :property_image
  has_many :reviews

  after_validation { self.city = self.city.upcase }

  validates :address, presence: true, length: {minimum: 10, maximum: 255}
  validates :Price, presence: true, numericality: true
  validates :Area, presence: true, numericality: true
  validates :OwnerName, presence: true, length: {minimum: 3, maximum: 50}
  validates :ContactPerson, presence: true, length: {minimum: 3, maximum: 50}
  validates :Number, presence: true, numericality: true, length: { is: 10 }
  validates :city, presence: true
  validates :property_status, presence: true
end
# y(id: integer, PropertyType: string, address: string, Price: float, Area: float,
#    OwnerName: string,
#    ContactPerson: string, Number: integer, user_id: integer,
#    created_at: datetime, updated_at: datetime,
#     city: string, property_status: string, approved_status: boolean,
#      rejection_reason: string)
