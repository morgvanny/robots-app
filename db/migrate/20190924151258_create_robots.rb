class CreateRobots < ActiveRecord::Migration[6.0]
  def change
    create_table :robots do |t|
      t.string :name
      t.integer :number_of_legs
      t.boolean :capable_of_love

      t.timestamps
    end
  end
end
