class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.string :purpose
      t.string :timeStamp
      t.string :location
      t.references :club, foreign_key: true

      t.timestamps
    end
  end
end
