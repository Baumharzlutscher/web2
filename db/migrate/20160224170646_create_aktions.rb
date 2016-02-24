class CreateAktions < ActiveRecord::Migration
  def change
    create_table :aktions do |t|
      t.string :Monat
      t.string :Name
      t.float :Rabatt

      t.timestamps null: false
    end
  end
end
