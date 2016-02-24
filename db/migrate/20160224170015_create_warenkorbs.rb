class CreateWarenkorbs < ActiveRecord::Migration
  def change
    create_table :warenkorbs do |t|
      t.integer :Anzahl
      t.string :Rabattcode
      t.integer :Gesamtbetrag

      t.timestamps null: false
    end
  end
end
