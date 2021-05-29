class CreateBuyings < ActiveRecord::Migration[6.0]
  def change
    create_table :buyings do |t|
      t.integer    :card_num, null: false
      t.integer    :exe_month, null: false
      t.integer    :exe_year, null: false
      t.integer    :security_code, null: false
      t.references :user, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.timestamps
    end
  end
end
