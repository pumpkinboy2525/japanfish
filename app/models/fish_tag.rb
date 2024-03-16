class FishTag < ApplicationRecord
  belongs_to :fish
  belongs_to :prefecture_tag
end
