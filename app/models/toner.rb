class Toner < ActiveRecord::Base
  has_many :machines
  
  def upcase_toner
	self.name.upcase! if self.name
  end
  
   before_create :upcase_toner
  
end
