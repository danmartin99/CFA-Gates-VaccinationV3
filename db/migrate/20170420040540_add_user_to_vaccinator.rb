class AddUserToVaccinator < ActiveRecord::Migration[5.0]
  def change
    add_reference :vaccinators, :user, foreign_key: true
  end
end
