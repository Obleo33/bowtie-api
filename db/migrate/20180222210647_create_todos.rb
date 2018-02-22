class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
    	t.string :name
			add_foreign_key :todos, :projects

      t.timestamps
    end
  end
end
