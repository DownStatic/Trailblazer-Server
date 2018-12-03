class User < ApplicationRecord
  has_one_attached :avatar
  has_secure_password
  validates :name, uniqueness: {case_sensitive: false}
  validates :address, presence: true
  validates :coords, presence: true
end
