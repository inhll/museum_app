class PagesController < ApplicationController
  # GET /museums
  # GET /museums.xml
  def index
    @museums = Museum.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @museums }
    end
Time.now.strftime("%A, %B %d, %Y") 
Time.now.strftime("%m/%d/%Y")
@museums.each do |museum|
free_days = museum.free_days
 end
  end
 
  def contact
  end

end
