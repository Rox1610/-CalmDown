class AddNameToResources < ActiveRecord::Migration[7.0]
  def change
    add_column :resources, :name, :string
  end
end
