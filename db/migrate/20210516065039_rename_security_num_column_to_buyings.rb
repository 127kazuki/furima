class RenameSecurityNumColumnToBuyings < ActiveRecord::Migration[6.0]
  def change
    rename_column :buyings, :security_num, :security_code
  end
end
