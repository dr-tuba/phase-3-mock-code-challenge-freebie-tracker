class CreateFreebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      t.belongs_to :dev, foreign_key: true, null: false
      t.belongs_to :company, foreign_key: true, null: false
      t.string :item_name
      t.integer :value 
    end
  end
end
