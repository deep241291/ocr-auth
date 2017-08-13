class CreateOcrs < ActiveRecord::Migration
  def change
    create_table :ocrs do |t|
      t.text :results
      t.string :avatar	
      t.timestamps null: false
    end
  end
end
