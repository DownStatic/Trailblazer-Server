class AddCoordsToLandmarks < ActiveRecord::Migration[5.2]
  def change
    add_column :landmarks, :coords, :jsonb
  end
end
