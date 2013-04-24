class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :short
      t.string :address
      t.string :zipcode
      t.string :telephone
      t.string :fax
      t.string :contact_person
      t.string :contact_telephone
      t.string :email
      t.string :bank
      t.string :bankcode

      t.timestamps
    end
  end
end
