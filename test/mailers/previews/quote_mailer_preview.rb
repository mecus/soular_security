# Preview all emails at http://localhost:3000/rails/mailers/quote_mailer
class QuoteMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/quote_mailer/request_confirmation
  def request_confirmation
  	quote = Quote.last
    QuoteMailer.request_confirmation(quote)
  end

end
