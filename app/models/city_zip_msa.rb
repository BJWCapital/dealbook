class CityZipMSA < ActiveRecord::Base
  has_many :Addresses
  belongs_to :MSAPMSACMSA
  
  def getCMSA
    
  end
  
  def getPMSA
    
  end
  
  def getMSA
    
  end
  
end
