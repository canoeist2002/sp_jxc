class Provider < ActiveRecord::Base
  attr_accessible :address, :bank, :contact_person, :contact_telephone, :email, :fax, :name, :short, :telephone, :zipcode
end
