class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, :email, :password, :password_confirmation, presence: true
  validates :password, length: {minimum: 7}, format: { with: /\A[a-z\d]{6,20}+\z/i}, on: :create

  has_one :profile, dependent: :destroy
  accepts_nested_attributes_for :profile
  has_many :contributions, dependent: :destroy
  has_many :comments
  has_many :likes, dependent: :destroy

end
