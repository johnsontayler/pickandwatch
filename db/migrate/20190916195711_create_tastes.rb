class CreateTastes < ActiveRecord::Migration[5.2]
  def change
    create_table :tastes do |t|
      t.boolean :watched, default: false
      t.boolean :wish, default: false
      t.boolean :rating
      t.text :review
      t.references :movie, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
