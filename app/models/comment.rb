class Comment < ApplicationRecord
  belongs_to :customer
  belongs_to :shop
  
   validates :comment, presence: true
end
