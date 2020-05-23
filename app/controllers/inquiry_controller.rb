class InquiryController < ApplicationController
  def index
    @inquiry = Inquiry.new
    render :action => 'index'
  end

  def confirm
    @inquiry = Inquiry.new(inquiry_params)
    @inquiry.subsidy = params[:inquiry][:subsidy]
    if @inquiry.valid?
      render :action =>  'confirm'
    else
      render :action => 'index'
    end
    # binding.pry
  end

  def thanks
    @inquiry = Inquiry.new(inquiry_params)
    @inquiry.subsidy = params[:inquiry][:subsidy]
    InquiryMailer.received_email(@inquiry, @inquiry.subsidy).deliver
    InquiryMailer.send_email(@inquiry, @inquiry.subsidy).deliver
  end

  private
  def inquiry_params
    params.require(:inquiry).permit(
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
