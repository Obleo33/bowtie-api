class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
    	t.string :name
    	t.integer :project_id
			add_foreign_key :project_id, :projects

      t.timestamps
    end
  end
end
