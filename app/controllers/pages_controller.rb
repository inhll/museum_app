class PagesController < ApplicationController
  # GET /museums
  # GET /museums.xml

  @today_pretty = Time.now.strftime("%A, %B %d, %Y") 
  @today_useful = Time.now.strftime("%m/%d/%Y")

  def index
    @title = "Home"
    @museums = Museum.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @museums }
    end
  end

  def contact
    @title = "Contact"
  end

end
