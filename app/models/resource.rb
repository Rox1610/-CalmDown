class Resource < ApplicationRecord
  belongs_to :profile
  enum category: {
    youtube: 0,
    spotify: 1
  }
end
