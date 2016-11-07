class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :img_url
      t.string :motto
      t.string :region
      

      t.timestamps
    end
  end
end
