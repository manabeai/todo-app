class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :info
      t.boolean :finished

      t.timestamps
    end
  end
end
