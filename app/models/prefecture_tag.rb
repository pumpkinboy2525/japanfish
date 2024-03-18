class PrefectureTag < ApplicationRecord
  has_many :fish_tags, dependent: :destroy
  has_many :fish, through: :fish_tags
  
  has_many :shop_tags, dependent: :destroy
  has_many :shop, through: :shop_tags
  
  validates :name, presence:true
end
