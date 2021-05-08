class CreateBuyings < ActiveRecord::Migration[6.0]
  def change
    create_table :buyings do |t|

      t.references :user, nul: false, foreign_key: true
      t.references :item, nul: false, foreign_key: true
      t.timestamps
    end
  end
end
