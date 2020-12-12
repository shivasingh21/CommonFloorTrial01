class User < ApplicationRecord

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  has_many :properties

  after_validation { self.email = self.email.downcase }

  validates :username, presence: true, length: { maximum: 25 }, uniqueness: { case_sensetive: false }
  validates :email, presence: true, length: { maximum: 25 }, uniqueness: { case_sensetive: false }, format: { with: VALID_EMAIL_REGEX }

end
