class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { in: 1..20 }
  validates :email, presence: true, uniqueness: true, format: { with: /.*@.*/ }
  validates :password, presence: true, length: { in: 8..32 }
end
