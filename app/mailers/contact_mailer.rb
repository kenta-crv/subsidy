class ContactMailer < ActionMailer::Base
  default from: "subsidy@comicomi.cc"
  def received_email(contact)
    @contact = contact
    mail to: "subsidy@comicomi.cc"
    mail(subject: '助成金サポート.jpよりお問い合わせがありました') do |format|
      format.text
    end
  end

  def send_email(contact)
    @contact = contact
    mail to: contact.email
    mail(subject: '助成金サポート.jpにお問い合わせ頂きありがとうございます｜Ri-Novas') do |format|
      format.text
    end
  end

end
