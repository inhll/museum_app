class Museum < ActiveRecord::Base
  attr_accessible :name, :website, :address, :city, :state, :zip_code, :free_days, :hours

  validates_length_of :name,  
                        :within => 5..80,
                        :too_long => "should be shorter.",
                        :too_short => "should be longer." 
  validates_format_of :website, :with => /^(#{URI::regexp(%w(http https))})$/, :allow_blank => false
  validates_length_of :address, 
                        :within => 8..150,
                        :too_long => "should be shorter.",
                        :too_short => "should be longer."
  validates_length_of :city,
                        :within => 5..150,
                        :too_long => "should be shorter.",
                        :too_short => "should be longer."
  validates :hours,     :presence => true
  validates :state,     :presence => true                          
  validates :zip_code,  :presence => true
  validates :free_days, :presence => true

end
