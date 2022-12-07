class UpdateEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :name, :string
    add_column :events, :start_time, :datetime, null: false
    add_column :events, :end_time, :datetime, null: false
    remove_column :events, :date, :date
  end
end
