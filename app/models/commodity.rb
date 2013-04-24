class Commodity < ActiveRecord::Base
  attr_accessible :memo, :name, :price, :provider_id, :short, :standard, :unit
end
