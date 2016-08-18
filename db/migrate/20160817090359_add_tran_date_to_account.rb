class AddTranDateToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :tran_date, :datetime
  end
end
