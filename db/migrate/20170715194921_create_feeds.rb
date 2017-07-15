class CreateFeeds < ActiveRecord::Migration[5.0]
  def change
    create_table :feeds do |t|
      t.string :project_id
      t.string :user_id
      t.string :message

      t.timestamps
    end
  end
end
