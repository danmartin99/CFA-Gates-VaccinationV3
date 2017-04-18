class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :pcountry
      t.string :pstate
      t.string :paddress1
      t.string :paddress2
      t.integer :project
      t.integer :noofvac
      t.references :grcrd, foreign_key: true

      t.timestamps
    end
  end
end
