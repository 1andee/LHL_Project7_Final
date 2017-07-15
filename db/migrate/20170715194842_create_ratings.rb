class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.string :availability
      t.string :accuracy
      t.string :giver_id
      t.string :receiver_id
      t.string :project_id

      t.timestamps
    end
  end
end
