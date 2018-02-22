class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
    	t.string :name
			add_foreign_key :projects, :users

      t.timestamps
    end
  end
end
