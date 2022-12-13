class AddTimingToEventsResources < ActiveRecord::Migration[7.0]
  def change
    add_column :events_resources, :timing, :integer
  end
end
