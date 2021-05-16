class AddcardNumTobuyings < ActiveRecord::Migration[6.0]
  def change
    add_column :buyings, :card_num, :integer
    add_column :buyings, :exe_month, :integer
    add_column :buyings, :exe_year, :integer
    add_column :buyings, :security_code, :integer
  end
end
