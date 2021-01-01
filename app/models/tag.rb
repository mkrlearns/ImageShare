class Tag < ApplicationRecord
  has_many :images
  has_many :users, through: :images
end
