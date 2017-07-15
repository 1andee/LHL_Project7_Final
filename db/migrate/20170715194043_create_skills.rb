class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :user_id
      t.boolean :mentor
      t.string :project_id

      t.timestamps
    end
  end
end
