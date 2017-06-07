class Pp1 < ApplicationRecord
  belongs_to :user
  has_many :pp1as
  belongs_to :product
end
