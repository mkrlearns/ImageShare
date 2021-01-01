class User < ApplicationRecord
  has_many :images
  has_many :likes
  has_many :liked_images, through :likes
  has_many :comments
  has_many :commented_images, through :comments
  has_many :tags, through :images
end
