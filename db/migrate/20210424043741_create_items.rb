class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.text :explain, null: false
      t.integer :category_id, null: false
      t.integer :status_id, null: false
      t.integer :delivery_pay_id, null:false
      t.integer :delivery_area_id, null:false
      t.integer :delivery_day_id, null: false
      t.integer :price, null: false
      t.references :user, nul: false, foreign_key: true
      t.timestamps
    end
  end
end
