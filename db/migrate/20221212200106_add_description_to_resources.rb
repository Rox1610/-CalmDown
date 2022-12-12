class AddDescriptionToResources < ActiveRecord::Migration[7.0]
  def change
    add_column :resources, :description, :text
  end
end
