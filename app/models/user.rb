class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 5 , maximum: 25 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true,
                  uniqueness: { case_sensitive: false}, 
                  length: { maximum: 50 },
                    format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 4, maximum: 15 }
end
