class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string  :item_name, null: false
      t.string  :maker,     null:false
      t.integer :region_id
      t.text    :url
      t.timestamps
    end
  end
end
