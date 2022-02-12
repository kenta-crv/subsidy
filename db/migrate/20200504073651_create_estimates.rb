class CreateEstimates < ActiveRecord::Migration[5.2]
  def change
    create_table :estimates do |t|
      t.string :company #会社名
      t.string :name #担当者名
      t.string :tel #電話番号
      t.string :mail #メールアドレス
      t.string :address #住所
      t.string :url
      t.string :before_month
      t.string :before_sales
      t.string :before_year_sales
      t.string :after_month
      t.string :after_sales
      t.string :after_year_sales
      t.string :kinds #種別
      t.string :request #書類収集依頼
      t.string :remarks #事業内容その他
      t.timestamps
    end
  end
end
