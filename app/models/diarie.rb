class Diarie < ApplicationRecord
  belongs_to :user
  belongs_to :event
  enum rating: { "😱" => 0,
                      "😧"           => 1,
                      "🫠"   => 2,
                      "😊"     => 3
                      }
end
