class FormMailer < ApplicationMailer
  default from: 'tommy.suwunrut@gmail.com'

  def welcome_email
    @reciepient = params[:reciepient]
    @form = params[:form]
    attachments['form.pdf'] = WickedPdf.new.pdf_from_string(
      render_to_string(template: 'forms/show.pdf.erb', locals:{:@form => @form})
    )
    mail(to: @reciepient, subject: 'Copy of your Rom3 Rehab Form')
  end
end

    # mg_client = Mailgun::Client.new 'e072ea49fd8121ea97d6cdf82332e5f2-bd350f28-67a6b198'
    # message_params =
    # {
    #   :from             => "ergonzalezpmp@gmail.com",
    #   :to               => @user.email,
    #   :subject          => 'Welcome to my awesome site',
    #   :text             => 'This mail is sent using Mailgun'
    # }
    # mg_client.send_message 'sandbox9b9c10536f19460598cdc3c652012f48.mailgun.org', message_params
