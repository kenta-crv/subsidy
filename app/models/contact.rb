class Contact
  include ActiveModel::Model
  attr_accessor :company, :name, :tel, :email, :address, :subject, :employment, :emp_number, :social, :subsidy, :subsidy_other, :message

  validates :company, {presence: true} #会社名
  validates :name, {presence: true} #担当者名
  validates :tel, {presence: true} #電話番号
  validates :email, {presence: true} #メールアドレス
  validates :address, {presence: true} #
  validates :subject, {presence: true}

  @@SubsidyLists = [
    ["キャリアアップ助成金","キャリアアップ助成金"],
    ["人材開発支援等助成金","人材開発支援等助成金"],
    ["トライアル雇用助成金","トライアル雇用助成金"],
    ["人材確保支援等助成金","人材確保支援等助成金"],
    ["両立支援等助成金","両立支援等助成金"],
    ["小規模事業者持続化補助金","小規模事業者持続化補助金"],
    ["ものづくり補助金","ものづくり補助金"],
    ["IT導入支援補助金","IT導入支援補助金"]
  ]

  def self.SubsidyLists
    @@SubsidyLists
  end
end
