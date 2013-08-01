class Stakeholder < ActiveRecord::Base
  attr_accessible :country, :description, :email, :first_name, :last_name, :organisation, :physical_address, :tel
end
