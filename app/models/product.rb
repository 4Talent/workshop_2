class Product < ActiveRecord::Base
  has_many :comments

  has_many :order_products
  has_many :orders, through: :order_products

  validates :title, presence: true

  after_create :send_mail

  def send_mail
    ProductMailer.news_letter(self).deliver
  end
end
