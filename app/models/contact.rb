class Contact < ApplicationRecord
  validates :company, {presence: true}
  validates :name, {presence: true}
  validates :tel, {presence: true}
  validates :email, {presence: true}
  validates :address, {presence: true}
  validates :message, {presence: true}
end
