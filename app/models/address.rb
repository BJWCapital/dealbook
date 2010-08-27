class Address < ActiveRecord::Base
  belongs_to :CityZipMsa
  belongs_to :Property
  
  def address_only(address_id)
    
  end
  
  def address_with_msa(address_id)
    
  end
  
  def address_with_pmsa(address_id)
    
  end
  
  def address_with_cmsa(address_id)
    
  end
  
  def address_with_area_code(address_id)
    
  end
  
  def pmsa(address_id)
    
  end
  
  def cmsa(address_id)
    
  end
  
  def msa(address_id)
    
  end
  
  
end
