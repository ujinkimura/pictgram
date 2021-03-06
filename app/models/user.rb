class User < ApplicationRecord
  validates :name, presence: true#validates=検証
  validates :name, length: { maximum: 15}
  VAILD_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true
  validates :email, format: { with: VAILD_EMAIL_REGEX}
 VAILD_PASSWORD_REGEX = /\A(?=.*[0-9])(?=.*[a-zA-Z])([a-zA-Z0-9]+)\z/
  validates :password, length: { in: 8..32 }
  validates :password, presence: true
  validates :password, format: { with: VAILD_PASSWORD_REGEX}
 
  has_secure_password

  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'
  
end