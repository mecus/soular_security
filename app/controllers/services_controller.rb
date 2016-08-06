class ServicesController < ApplicationController
  def index
  end
  def security_guard
  	@title = "Security Guards Services"
  end
  def close_protection
    @title = "Close Protection Services"
  end
  def event_security
    @title = "Event Security Services"
  end
  def contruction_security
    @title = "Construction Security Services"
  end
  def hospitality_security
    @title = "Hospitality Security Services"
  end
  def retail_security
    @title = "Retail Security Services"
  end
  def concierge_security
    @title = "Concierge Security Services"
  end
  def corporate_security
    @title = "Corporate Security Services"
  end
  def hotel_security
    @title = "Hotel Security Services"
  end
  def mobile_security
    @title = "Mobile Security Services"
  end
  def industrial_security
    @title = "Industrial Security Services"
  end
end
