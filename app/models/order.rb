class Order < ActiveRecord::Base
  belongs_to :user
  has_many :charities, :through => :donations, dependent: :destroy

  def self.totalPrice(product)
    total = 0
    product.each do |p|
      total+= p.price
    end
    total
  end
  

end