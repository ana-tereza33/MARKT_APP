class AddTitleToFarmers < ActiveRecord::Migration[7.1]
  def change
    remove_column :farmers, :description
    add_column :farmers, :title, :string
    add_column :farmers, :description_profile, :text
    add_column :farmers, :description_farm, :text
  end
end
