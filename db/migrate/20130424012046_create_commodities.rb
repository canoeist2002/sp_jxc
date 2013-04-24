class CreateCommodities < ActiveRecord::Migration
  def change
    create_table :commodities do |t|
      t.string :name
      t.string :short
      t.string :unit
      t.string :provider_id
      t.string :standard
      t.string :memo
      t.string :price

      t.timestamps
    end
  end
end
