class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :Rechnungsadresse
      t.string :Nickname
      t.string :Status

      t.timestamps null: false
    end
  end
end
