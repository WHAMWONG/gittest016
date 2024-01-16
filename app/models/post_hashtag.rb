class PostHashtag < ApplicationRecord
  belongs_to :post
  belongs_to :hashtag

  # validations

  # end for validations

  class << self
  end
end
