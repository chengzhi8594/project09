class CreateRsvps < ActiveRecord::Migration[6.0]
  def change
    create_table :rsvps do |t|
      t.belongs_to :user
      t.belongs_to :event
    end
  end
end
