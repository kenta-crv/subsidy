class ContactController < ApplicationController
  def index
    @contact = Contact.new
    render :action => 'index'
  end

  def confirm
    @contact = Contact.new(contact_params)
    @contact.subsidy = params[:contact][:subsidy]
    if @contact.valid?
      render :action =>  'confirm'
    else
      render :action => 'index'
    end
    # binding.pry
  end

  def thanks
    @contact = Contact.new(contact_params)
    @contact.subsidy = params[:contact][:subsidy]
    ContactMailer.received_email(@contact, @contact.subsidy).deliver
    ContactMailer.send_email(@contact, @contact.subsidy).deliver
  end

  private
  def contact_params
    params.require(:contact).permit(
    :company, #会社名
    :name,  #代表者名
    :tel, #電話番号
    :address, #住所
    :email, #メールアドレス
    :subject,
    :employment,
    :emp_number,
    :social,
    :subsidy,
    :subsidy_other,
    :message
    )
  end
end
