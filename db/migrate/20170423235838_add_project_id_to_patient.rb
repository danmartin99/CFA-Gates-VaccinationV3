class AddProjectIdToPatient < ActiveRecord::Migration[5.0]
  def change
    add_reference :patients, :project, foreign_key: true
  end
end
