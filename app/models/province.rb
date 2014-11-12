

class Province 

  def self.options_for_select
    ['Madrid','Valencia', 'Málaga'].map { |value| [ value, value ] }
  end 
  

end
