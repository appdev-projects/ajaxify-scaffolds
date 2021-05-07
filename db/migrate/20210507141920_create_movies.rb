class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.integer :duration
      t.string :image
      t.integer :year
      t.references :director, null: true, foreign_key: true, index: true

      t.timestamps
    end
  end
end
