class CreateFarmers < ActiveRecord::Migration[7.1]
  def change
    create_table :farmers do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.float :longitude
      t.float :latitude
      t.string :address

      t.timestamps
    end
  end
end
