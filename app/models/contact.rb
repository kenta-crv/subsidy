class Contact
  include ActiveModel::Model
  attr_accessor :company, :name, :tel, :email, :address, :subject ,:message

  validates :company, {presence: true} #会社名
  validates :name, {presence: true} #担当者名
  validates :tel, {presence: true} #電話番号
  validates :email, {presence: true} #メールアドレス
  validates :address, {presence: true} #
  validates :subject, {presence: true}
  validates :message, {presence: true}
end
