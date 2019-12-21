class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  has_secure_password

  include ImageUploader::Attachment(:image) # adds an `image` virtual attribute
  # has_many :skills
  has_many :contracts, foreign_key: 'tutor_id'
end
