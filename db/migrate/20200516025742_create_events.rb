class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :start
      t.datetime :end
      t.integer :user_id
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
