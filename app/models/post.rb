class Post < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_many :post_hashtags, dependent: :destroy
  has_many :user_tags, dependent: :destroy

  belongs_to :user

  enum privacy_setting: %w[public friends private], _suffix: true

  # validations

  # end for validations

  class << self
  end
end
