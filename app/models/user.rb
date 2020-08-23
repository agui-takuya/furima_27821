class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i.freeze
  with_options presence: true do
    validates :password, format: { with: VALID_PASSWORD_REGEX }
    validates :nickname, uniqueness: true
    validates :fist_name, uniqueness: true
    validates :family_name, uniqueness: true
    validates :fist_name_kana, uniqueness: true
    validates :family_name_kana, uniqueness: true
    validates :birth_day
   
end
