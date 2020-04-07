class User < ApplicationRecord
  
  validates :user_name, presence: true, length: {minimum: 3, maximum: 15}, uniqueness: {case_sensative: false}
  has_many :messages
  has_secure_password

end
