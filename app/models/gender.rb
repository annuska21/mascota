class Gender 

  def self.options_for_select
    ['Desconocido', 'Hembra', 'Macho'].map { |value| [ value, value ] }
  end 
  

end