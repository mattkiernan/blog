class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.text :body

      t.timestamps
    end
  end
end
