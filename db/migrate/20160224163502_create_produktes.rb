class CreateProduktes < ActiveRecord::Migration
  def change
    create_table :produktes do |t|
      t.string :Name
      t.float :Preis
      t.integer :Bearbeitungszeit
      t.string :Produktgruppe

      t.timestamps null: false
    end
  end
end
