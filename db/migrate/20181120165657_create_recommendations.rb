class CreateRecommendations < ActiveRecord::Migration[5.2]
  def change
    create_table :recommendations do |t|
      t.integer :user_id
      t.integer :trail_id

      t.timestamps
    end
  end
end
