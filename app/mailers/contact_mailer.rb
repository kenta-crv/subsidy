class ContactMailer < ActionMailer::Base
  default from: "mail@app-sc.jp"
  def received_email(contact)
    @contact = contact
    mail to: "mail@app-sc.jp"
    mail(subject: 'Ri-Novasよりお問い合わせがありました') do |format|
      format.text
    end
  end

  def send_email(contact)
    @contact = contact
    mail to: contact.email
    mail(subject: 'Ri-Novasにお問い合わせ頂きありがとうございます｜Ri-Novas') do |format|
      format.text
    end
  end

end
