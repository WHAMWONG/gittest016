class Photo < ApplicationRecord
  belongs_to :post

  enum file_type: %w[jpg png gif], _suffix: true

  # validations

  # end for validations

  class << self
  end
end
