class Hashtag < ApplicationRecord
  has_many :post_hashtags, dependent: :destroy

  # validations

  # end for validations

  class << self
  end
end
