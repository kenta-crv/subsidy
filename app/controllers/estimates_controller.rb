class EstimatesController < ApplicationController
  def index
    @estimate = Estimate.new
    render :action => 'index'
  end

  def confirm
    @estimate = Estimate.new(estimate_params)
    if @estimate.valid?
      render :action =>  'confirm'
    else
      render :action => 'index'
    end
  end

  def thanks
    @estimate = Estimate.new(estimate_params)
    @estimate.save
    EstimateMailer.received_email(@estimate).deliver
    EstimateMailer.send_email(@estimate).deliver
  end

  private
  def estimate_params
    params.require(:estimate).permit(
      :company, #会社名
      :name, #担当者名
      :tel, #電話番号
      :mail, #メールアドレス
      :address, #住所
      :url,
      :before_month,
      :before_sales,
      :before_year_sales,
      :after_month,
      :after_sales,
      :after_year_sales,
      :kinds, #種別
      :request, #書類収集依頼
      :remarks #事業内容その他
    )
  end
end
