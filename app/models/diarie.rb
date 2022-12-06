class Diarie < ApplicationRecord
  belongs_to :user
  belongs_to :event
  enum rating: {
    stressed: 0,
    anxious: 1,
    good: 2
  }
end
