class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_one :address
end
