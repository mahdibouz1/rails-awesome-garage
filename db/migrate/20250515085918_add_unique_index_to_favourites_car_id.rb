class AddUniqueIndexToFavouritesCarId < ActiveRecord::Migration[8.0]
  def change
    add_index :favourites, :car_id, unique: true
  end
end
