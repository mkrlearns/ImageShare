class Image < ApplicationRecord
  belongs_to :user
  belongs_to :tag
  has_many :likes
  has_many :users, through: :likes
  has_many :comments
  has_many :users, through: :comments

  validates :title, presence: true, length: { maximum: 20 }
  validates :url, presence: true, url: { no_local: true, schemes: ['https', 'http'] }
end
