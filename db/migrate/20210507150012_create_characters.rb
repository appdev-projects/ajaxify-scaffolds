class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.references :actor, null: false, foreign_key: true, index: true
      t.references :movie, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
