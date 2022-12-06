class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name

      t.timestamps
    end
    add_reference :users, :profile, foreign_key: true, null: true
  end
end
