class EstimateMailer < ActionMailer::Base
  default from: "subsidy@comicomi.cc"
  #default to: @estimate.email

  #def send_when_admin_reply(estimate) #メソッドに対して引数を設定
  #  @estimate = estimate
  #  mail to: estimate.email,
  #           subject: '【株式会社Ri-Plus】 お問い合わせありがとうございます。'
  #end

  def received_email(estimate)
    @estimate = estimate
    mail to: "subsidy@comicomi.cc"
    mail(subject: '助成金サポート.jpよりお問い合わせがありました') do |format|
      format.text
    end
  end

  def send_email(estimate)
    @estimate = estimate
    mail to: estimate.mail
    mail(subject: 'お問い合わせ頂きありがとうございます｜助成金サポート.jp') do |format|
      format.text
    end
  end

end
