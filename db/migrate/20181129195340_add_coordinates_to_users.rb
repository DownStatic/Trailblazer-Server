class AddCoordinatesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :coords, :jsonb
  end
end
