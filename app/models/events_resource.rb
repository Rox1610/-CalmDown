class EventsResource < ApplicationRecord
  belongs_to :event
  belongs_to :resource
end
