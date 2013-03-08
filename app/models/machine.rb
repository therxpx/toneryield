class Machine < ActiveRecord::Base
   belongs_to :toner
   
  def upcase_model
	self.model.upcase! if self.model
  end
  
   before_create :upcase_model
end
