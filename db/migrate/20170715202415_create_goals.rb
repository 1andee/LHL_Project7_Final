class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.string :project_id
      t.string :title
      t.string :completion_status_id

      t.timestamps
    end
  end
end
