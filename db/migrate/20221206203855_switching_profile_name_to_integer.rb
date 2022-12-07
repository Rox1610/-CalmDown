class SwitchingProfileNameToInteger < ActiveRecord::Migration[7.0]
  def change
    remove_column :profiles, :name
    add_column :profiles, :name, :integer
  end
end
