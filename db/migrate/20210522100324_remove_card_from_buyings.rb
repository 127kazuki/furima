class RemoveCardFromBuyings < ActiveRecord::Migration[6.0]
  def change
    remove_column :buyings, :exe_year, :string
    remove_column :buyings, :security_code, :string
  end
end
