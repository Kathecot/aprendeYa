class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :title
      t.string :description
      t.integer :attachment
      t.integer :preview_img
      t.references :unit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
