class Resource < ApplicationRecord
  belongs_to :profile
  has_many :events_resources
  enum category: {
    youtube: 0,
    mixcloud: 1
  }
end
