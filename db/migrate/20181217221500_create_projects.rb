class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :user_id, null: false
      t.string :title, null: false 
      t.text :description, null: false 
      t.float :funding_goal, null: false 
      t.datetime :start_date, null: false 
      t.datetime :end_date, null: false 
    end
    add_index :projects, :user_id
    add_index :projects, :title, unique: true
  end
end
