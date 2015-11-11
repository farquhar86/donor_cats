class AddMonthlyAmountToDonations < ActiveRecord::Migration
  def change
    add_column :donations, :monthly_amount, :integer
  end
end
