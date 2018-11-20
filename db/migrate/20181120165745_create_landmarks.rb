class CreateLandmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :landmarks do |t|
      t.string :image
      t.string :details
      t.integer :user_id
      t.integer :trail_id

      t.timestamps
    end
  end
end
