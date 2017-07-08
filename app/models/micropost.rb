class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :relationship_user_microposts
  has_many :favorites_inv, through: :relationship_user_microposts, source: :user

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
end