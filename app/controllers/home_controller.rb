class HomeController < ApplicationController
  def index
  	@posts = Post.all.paginate(:page => params[:page], :per_page => 6).order('created_at DESC')
  end
  def about
  	@posts = Post.all.paginate(:page => params[:page], :per_page => 4).order('created_at DESC')
  end
  def contact
  end
  def career
  	
  end
  def shop
  	
  end
  def blog
  	@posts = Post.all.paginate(:page => params[:page], :per_page => 6).order('created_at DESC')
  end
end
