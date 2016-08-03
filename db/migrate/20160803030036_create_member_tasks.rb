class CreateMemberTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :member_tasks do |t|
      t.references :member, foreign_key: true
      t.references :task, foreign_key: true
      t.string :task_type, default: "Current Task"

      t.timestamps
    end
  end
end
