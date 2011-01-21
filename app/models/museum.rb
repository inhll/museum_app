class Museum < ActiveRecord::Base
  attr_accessible :name, :website, :address, :city, :state, :zip_code, :free_days

  validates :name,      :presence => true,
                        :length => { :maximum => 80 }
  validates :website,   :presence => true,
                        :length => { :maximum => 80 }
  validates :address,   :presence => true
  validates :city,      :presence => true
  validates :state,     :presence => true
  validates :zip_code,  :presence => true,
                        :length => { :is => 5 }
  validates :free_days, :presence => true

end
