class InquiryMailer < ActionMailer::Base
  default from: "subsidy@ri-plus.jp"

  def received_email(inquiry, subsidy)
    @inquiry = inquiry
    @inquiry.subsidy = subsidy
    mail to: "subsidy@ri-plus.jp"
    mail(subject: '助成金サポート.jpより補助金の見積もり依頼が届きました') do |format|
      format.text
    end
  end

  def send_email(inquiry, subsidy)
    @inquiry = inquiry
    @inquiry.subsidy = subsidy
    mail to: inquiry.email
    mail(subject: '助成金サポートへお問い合わせ頂きありがとうございます｜株式会社Ri-Plus') do |format|
      format.text
    end
  end
end
