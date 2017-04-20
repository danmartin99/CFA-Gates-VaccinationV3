class ChangeColumnVacPhotoInVaccinator < ActiveRecord::Migration[5.0]
  def change
    change_column :vaccinators, :vac_photo, :text
  end
end
