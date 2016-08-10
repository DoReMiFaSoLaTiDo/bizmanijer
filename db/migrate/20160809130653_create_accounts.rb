class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :type
      t.decimal :amount, precision: 10, scale: 2
      t.string :description
      t.references :division, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
