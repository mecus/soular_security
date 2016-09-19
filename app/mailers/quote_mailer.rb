class QuoteMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.quote_mailer.request_confirmation.subject
  #
  def request_confirmation(quote)
    @quote = quote
    @welcome = "Hi #{@quote.f_name} Thank you for sending us your request"
    @greeting = "through #{@quote.email}"
    mail to: @quote.email, subject: "Quote request confirmation"
  end
end
