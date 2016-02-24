class CreateStandorts < ActiveRecord::Migration
  def change
    create_table :standorts do |t|
      t.string :Adresse
      t.string :Oeffnungszeiten

      t.timestamps null: false
    end
  end
end
