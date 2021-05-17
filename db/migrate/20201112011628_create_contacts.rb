class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :company
      t.string :name
      t.string :tel
      t.string :email
      t.string :address
      t.string :call #依頼件数
      t.string :voice #アポ獲得分録音提供
      t.string :history #アポ架電履歴まとめ
      t.string :hirevel #ハイレベルアポインター
      t.string :list #リスト用意の有無
      t.string :message
      t.timestamps
    end
  end
end
