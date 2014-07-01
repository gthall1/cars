class CreateMakes < ActiveRecord::Migration
  def change
    create_table :makes do |t|
      t.string :name, null: false
      t.string :country_of_origin, null: false

      t.timestamps
    end
  end
end
