class CreateCompletionStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :completion_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
