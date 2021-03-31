class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.string :title
      t.text :body
      t.references :registration, null: false, foreign_key: true

      t.timestamps
    end
  end
end
