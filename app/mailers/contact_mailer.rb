class ContactMailer < ActionMailer::Base
  default from: "subsidy@ri-plus.jp"

  def received_email(contact, subsidy)
    @contact = contact
    @contact.subsidy = subsidy
    mail to: "subsidy@ri-plus.jp"
    mail(subject: '助成金サポート.jpより助成金の見積もり依頼が届きました') do |format|
      format.text
    end
  end

  def send_email(contact, subsidy))
    @contact = contact
    @contact.subsidy = subsidy
    mail to: contact.email
    mail(subject: '助成金サポートへお問い合わせ頂きありがとうございます｜株式会社Ri-Plus') do |format|
      format.text
    end
  end
end
