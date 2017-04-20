class ChangeColumnPhotoInPatient < ActiveRecord::Migration[5.0]
  def change
    change_column :patients, :photo, :text
  end
end
