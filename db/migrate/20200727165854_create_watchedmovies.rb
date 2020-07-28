class CreateWatchedmovies < ActiveRecord::Migration[5.2]
  def change
    create_table :watchedmovies do |t|
      t.references :user, foreign_key: true
      t.integer :movie_id, index: true

      t.timestamps
    end
  end
end
