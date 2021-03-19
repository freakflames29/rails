class CreateCruds < ActiveRecord::Migration[6.1]
  def change
    create_table :cruds do |t|
      t.string :name
      t.string :title
      t.integer :age

      t.timestamps
    end
  end
end
