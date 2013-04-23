class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :short
      t.string :address
      t.string :zipcode
      t.string :telephone
      t.string :fax
      t.string :contact_person
      t.string :contact_telephone
      t.string :bank
      t.string :email

      t.timestamps
    end
  end
end
