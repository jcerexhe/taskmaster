class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :location
      t.string :comment

      t.timestamps
    end
  end
end
