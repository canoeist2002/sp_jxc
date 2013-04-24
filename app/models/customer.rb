class Customer < ActiveRecord::Base
  attr_accessible :address, :bank, :bankcode, :contact_person, :contact_telephone, :email, :fax, :name, :short, :telephone, :zipcode
end
