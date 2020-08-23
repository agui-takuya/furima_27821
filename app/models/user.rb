class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }

  VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i.freeze
  validates :password, presence: true, format: { with: VALID_PASSWORD_REGEX }
  validates :nickname, presence: true, uniqueness: true
  validates :fist_name, presence: true, uniqueness: true
  validates :family_name, presence: true, uniqueness: true
  validates :fist_name_kana, presence: true, uniqueness: true
  validates :family_name_kana, presence: true, uniqueness: true
  validates :birth_day, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
end
