class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.string :title #タイトル
      t.string :kategory #カテゴリー
      t.string :description #説明
      t.string :heading_1 #見出し
      t.string :file_1 #ファイル
      t.text :content_1 #本文
      t.string :heading_2 #見出し
      t.string :file_2 #ファイル
      t.text :content_2 #本文
      t.string :heading_3 #見出し
      t.string :file_3 #ファイル
      t.text :content_3 #本文
      t.string :heading_4 #見出し
      t.string :file_4 #ファイル
      t.text :content_4 #本文
      t.string :heading_5 #見出し
      t.string :file_5 #ファイル
      t.text :content_5 #本文
      t.string :heading_6 #見出し
      t.string :file_6 #ファイル
      t.text :content_6 #本文
      t.string :heading_7 #見出し
      t.string :file_7 #ファイル
      t.text :content_7 #本文
      t.string :heading_8 #見出し
      t.string :file_8 #ファイル
      t.text :content_8 #本文
      t.string :heading_9 #見出し
      t.string :file_9 #ファイル
      t.text :content_9 #本文
      t.string :heading_10 #見出し
      t.string :file_10 #ファイル
      t.text :content_10 #本文
      t.string :heading_11 #見出し
      t.string :file_11 #ファイル
      t.text :content_11 #本文
      t.string :heading_12 #見出し
      t.string :file_12 #ファイル
      t.text :content_12 #本文
      t.string :heading_13 #見出し
      t.string :file_13 #ファイル
      t.text :content_13 #本文
      t.string :heading_14 #見出し
      t.string :file_14 #ファイル
      t.text :content_14 #本文
      t.string :heading_15 #見出し
      t.string :file_15 #ファイル
      t.text :content_15 #本文
      t.string :heading_16 #見出し
      t.string :file_16 #ファイル
      t.text :content_16 #本文
      t.string :heading_17 #見出し
      t.string :file_17 #ファイル
      t.text :content_17 #本文
      t.string :heading_18 #見出し
      t.string :file_18 #ファイル
      t.text :content_18 #本文
      t.string :heading_19 #見出し
      t.string :file_19 #ファイル
      t.text :content_19 #本文
      t.string :heading_20 #見出し
      t.string :file_20 #ファイル
      t.text :content_20 #本文
      t.timestamps
    end
  end
end
