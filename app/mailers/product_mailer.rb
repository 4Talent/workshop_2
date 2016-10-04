class ProductMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.product_mailer.news_letter.subject
  #
  def news_letter(new_product)
    @product = new_product
    attachments['filename.jpg'] = File.read('/path/to/filename.jpg')

    mail to: "to@example.org"
  end
end
