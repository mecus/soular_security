class HomeController < ApplicationController
  def index
  	@posts = Post.all.paginate(:page => params[:page], :per_page => 4).order('created_at DESC')
  end
  def about
  end
  def contact
  end
end
