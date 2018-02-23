class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
    	t.string :name
    	t.integer :user_id
			add_foreign_key :user_id, :users

      t.timestamps
    end
  end
end