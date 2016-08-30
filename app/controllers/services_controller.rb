class ServicesController < ApplicationController
  def index
  end
  def security_guard
    @posts = Post.all.paginate(:page => params[:page], :per_page => 4).order('created_at DESC')
  	@title = "Security Guards Services"
  end
  def close_protection
    @posts = Post.all.paginate(:page => params[:page], :per_page => 4).order('created_at DESC')
    @title = "Close Protection Services"
  end
  def event_security
    @posts = Post.all.paginate(:page => params[:page], :per_page => 4).order('created_at DESC')
    @title = "Event Security Services"
  end
  def construction_security
    @posts = Post.all.paginate(:page => params[:page], :per_page => 4).order('created_at DESC')
    @title = "Construction Security Services"
  end
  def hospitality_security
    @posts = Post.all.paginate(:page => params[:page], :per_page => 4).order('created_at DESC')
    @title = "Hospitality Security Services"
  end
  def retail_security
    @posts = Post.all.paginate(:page => params[:page], :per_page => 4).order('created_at DESC')
    @title = "Retail Security Services"
  end
  def concierge_security
    @posts = Post.all.paginate(:page => params[:page], :per_page => 4).order('created_at DESC')
    @title = "Concierge Security Services"
  end
  def corporate_security
    @posts = Post.all.paginate(:page => params[:page], :per_page => 4).order('created_at DESC')
    @title = "Corporate Security Services"
  end
  def hotel_security
    @posts = Post.all.paginate(:page => params[:page], :per_page => 4).order('created_at DESC')
    @title = "Hotel Security Services"
  end
  def mobile_security
    @posts = Post.all.paginate(:page => params[:page], :per_page => 4).order('created_at DESC')
    @title = "Mobile Security Services"
  end
  def industrial_security
    @posts = Post.all.paginate(:page => params[:page], :per_page => 4).order('created_at DESC')
    @title = "Industrial Security Services"
  end
end
