class Order < ActiveRecord::Base
  has_many :order_products
  has_many :products, through: :order_products

  before_validation :set_serie

  validates :serie, presence: true, on: :upload_order

  def set_serie
    self.serie = DateTime.now.to_i if self.serie.nil?
  end
end
