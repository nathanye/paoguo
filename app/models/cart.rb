class Cart < ApplicationRecord
  has_many :cart_items
  has_many :pp1s, through: :cart_items, source: :pp1

  def add_pp1_to_cart(pp1)
    ci = cart_items.build
    ci.pp1 = pp1
    ci.quantity = 1
    ci.save
  end

  def clean!
    cart_items.destroy_all
  end
end
