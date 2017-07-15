class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :project_id
      t.string :goal_id
      t.string :user_id
      t.string :comment
      t.boolean :action_required

      t.timestamps
    end
  end
end
