class CreateSmas < ActiveRecord::Migration
  def change
    create_table :smas do |t|
      t.references :user, index: true, foreign_key: true
      t.string :item_code
      t.string :description
      t.decimal :sma1
      t.decimal :sma2
      t.decimal :sma3
      t.decimal :sma4
      t.decimal :sma5
      t.decimal :sma6
      t.decimal :sma7
      t.decimal :sma8
      t.decimal :sma9
      t.decimal :sma10
      t.decimal :sma11
      t.decimal :sma12

      t.timestamps null: false
    end
  end
end
