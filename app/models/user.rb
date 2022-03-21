class User < ApplicationRecord
  before_save {self.email = email.downcase}
  has_many :articales
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    uniqueness: {case_sensitive: false},
                    length: {maximum: 100},
                    format: { with: VALID_EMAIL_REGEX }
  validates :username, presence: true, uniqueness: {case_sensitive: false}, length: {minimum: 3, maximum: 15}
  has_secure_password
  validates :password, presence: true
end