class User < ApplicationRecord
  has_one :dashboard, dependent: :destroy
  has_one :email_confirmation, dependent: :destroy

  has_many :posts, dependent: :destroy
  has_many :user_tags, dependent: :destroy
  has_many :authentication_tokens, dependent: :destroy
  has_many :password_reset_tokens, dependent: :destroy

  # validations

  # end for validations

  class << self
  end
end
