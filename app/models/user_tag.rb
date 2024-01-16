class UserTag < ApplicationRecord
  belongs_to :post
  belongs_to :user

  # validations

  # end for validations

  class << self
  end
end
