class Profile < ApplicationRecord
  has_many :users
  has_many :resources
  enum name: {
    visuel: 0,
    auditif: 1,
    kinesthetic: 2
  }
end
