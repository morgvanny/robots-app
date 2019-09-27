class CreateLasers < ActiveRecord::Migration[6.0]
  def change
    create_table :lasers do |t|
      t.string :color
      t.references :robot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
