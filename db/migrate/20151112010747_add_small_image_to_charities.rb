class AddSmallImageToCharities < ActiveRecord::Migration
  def change
    add_column :charities, :small_image, :string
  end
end
