class Shop < ApplicationRecord
  has_many :shop_tags, dependent: :destroy
  has_many :prefecture_tags, through: :shop_tags
  
  validates :shop_name, presence: true
  validates :shop_introduction, presence: true
  validates :shop_address, presence: true
  validates :image, presence: true
end
