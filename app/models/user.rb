class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :pp1s
  has_many :pp1as
  has_many :products
  has_many :orders


  def admin?
    is_admin
  end

end
