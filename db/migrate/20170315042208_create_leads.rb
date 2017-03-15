class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
  end
end
