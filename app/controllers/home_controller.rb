class HomeController < ApplicationController
  def index
    @quote = Quote.new
  	@posts = Post.all.paginate(:page => params[:page], :per_page => 6).order('created_at DESC')
    @users = User.all
  end
  def about
  	@posts = Post.all.paginate(:page => params[:page], :per_page => 4).order('created_at DESC')
  end
  def contact
    @visitor = Visitor.new
  end
  def career
  	
  end
  def shop
  	
  end
  def blog
  	@posts = Post.all.paginate(:page => params[:page], :per_page => 6).order('created_at DESC')
  end
end
