class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :mentee
      t.string :mentor
      t.boolean :pending
      t.date :start_date
      t.date :finish_date
      t.string :status
      t.boolean :public
      t.string :project_url
      t.string :summary
      t.string :mentee_feedback
      t.string :mentor_feedback

      t.timestamps
    end
  end
end
