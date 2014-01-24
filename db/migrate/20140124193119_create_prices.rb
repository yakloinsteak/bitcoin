class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.string :symbol
      t.float :price
      t.date :reqdate

      t.timestamps
    end
  end
end
