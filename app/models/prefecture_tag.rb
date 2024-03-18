class PrefectureTag < ApplicationRecord
  has_many :fish_tags, dependent: :destroy
  has_many :fish, through: :fish_tags
  
  validates :name, presence:true
  
  def prefecture_tag_id
    id
  end
end
