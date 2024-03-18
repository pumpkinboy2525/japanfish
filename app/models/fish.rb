class Fish < ApplicationRecord
  has_one_attached :image

  has_many :fish_tags, dependent: :destroy
  has_many :prefecture_tags, through: :fish_tags

  validates :fish_name, presence: true
  validates :fish_introduction, presence: true
  validates :image, presence: true


end
