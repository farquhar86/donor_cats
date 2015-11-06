class AddDonationIdToCharities < ActiveRecord::Migration
  def change
    add_column :charities, :donation_id, :integer
  end
end
