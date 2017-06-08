class Cart < ApplicationRecord
  has_many :cart_items
  has_many :pp1s, through: :cart_items, source: :pp1
  has_many :products, through: :cart_items, source: :product

  def add_pp1_to_cart(product, pp1)
    ci = cart_items.build
    ci.product = product
    ci.pp1 = pp1
    ci.quantity = 1
    ci.save
  end

  def add_product_to_cart(product)
    ci = cart_items.build
    ci.product = product
    # ci.pp1 = "1"
    ci.quantity = 1
    ci.save
  end

  def clean!
    cart_items.destroy_all
  end
end
