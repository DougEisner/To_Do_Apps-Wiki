class CreateTodoApps < ActiveRecord::Migration[5.0]
  def change
    create_table :todo_apps do |t|
      t.string :name
      t.string :url
      t.float :rating
      t.string :picture

      t.timestamps
    end
  end
end
