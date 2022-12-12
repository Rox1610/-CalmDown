class Resource < ApplicationRecord
  belongs_to :profile
  enum category: {
    youtube: 0,
    mixcloud: 1
  }
end
