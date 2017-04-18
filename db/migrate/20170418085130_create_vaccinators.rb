class CreateVaccinators < ActiveRecord::Migration[5.0]
  def change
    create_table :vaccinators do |t|
      t.string :vac_name1
      t.string :vac_name2
      t.integer :vac_idnum
      t.json :vac_photo
      t.string :vac_title
      t.string :vendor_name
      t.string :vac_email

      t.timestamps
    end
  end
end
