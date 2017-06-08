class Order < ApplicationRecord
  belongs_to :user

  validates :useremail, presence: true
end
