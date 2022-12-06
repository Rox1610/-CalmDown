class Profile < ApplicationRecord
  has_many :users
  enum name: {
    visuel: 0,
    auditif: 1,
    kinesthetic: 2
  }
end
