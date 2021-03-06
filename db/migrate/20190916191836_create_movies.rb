class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :photo
      t.string :genre
      t.text :description
      t.integer :year
      t.integer :duration
      t.string :director
      t.string :actor
      t.string :award
      t.float :imdb_rating
      t.string :imdb_id

      t.timestamps
    end
  end
end
