class Fish < ApplicationRecord
  has_one_attached :image
  
  validates :fish_name, presence: true
  validates :fish_introduction, presence: true
  validates :image, presence: true
end
