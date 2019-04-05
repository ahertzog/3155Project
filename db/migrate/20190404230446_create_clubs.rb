class CreateClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs do |t|
      t.string :clubName
      t.text :whoWeAre
      t.string :date
      t.string :location
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
