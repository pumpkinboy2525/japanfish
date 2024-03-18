class ShopTag < ApplicationRecord
  belongs_to :shop
  belongs_to :prefecture_tag
end
