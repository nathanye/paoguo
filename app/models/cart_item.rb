class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :pp1
  # belongs_to :product
end
