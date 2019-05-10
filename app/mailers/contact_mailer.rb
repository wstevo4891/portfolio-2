class ContactMailer < ApplicationMailer
  default from: 'contact@my-portfolio.com'

  def contact_email
    @contact = params[:contact]
    mail(to: 'ericb.stephenson@gmail.com', subject: 'Portfolio Contact Message')
  end
end
