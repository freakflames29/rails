class CreatePortfolios < ActiveRecord::Migration[6.1]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.text :subtitle
      t.text :image
      # t.text :phone

      t.timestamps
    end
  end
end
