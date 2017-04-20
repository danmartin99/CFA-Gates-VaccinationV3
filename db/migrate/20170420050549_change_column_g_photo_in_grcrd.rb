class ChangeColumnGPhotoInGrcrd < ActiveRecord::Migration[5.0]
  def change
    change_column :grcrds, :g_photo, :text
  end
end
