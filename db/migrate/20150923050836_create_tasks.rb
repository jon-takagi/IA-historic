class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :project_id
      t.string :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
