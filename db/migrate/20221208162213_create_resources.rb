class CreateResources < ActiveRecord::Migration[7.0]
  def change
    create_table :resources do |t|
      t.references :profile, null: false, foreign_key: true
      t.integer :category
      t.text :content

      t.timestamps
    end
  end
end
