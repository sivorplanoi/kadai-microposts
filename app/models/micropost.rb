class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :relationships

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
end