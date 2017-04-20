class AddUserToGrcrd < ActiveRecord::Migration[5.0]
  def change
    add_reference :grcrds, :user, foreign_key: true
  end
end
