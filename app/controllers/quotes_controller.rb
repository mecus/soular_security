class QuotesController < ApplicationController
	# before_action :authenticate_user!, only: :index

	def index
		@quotes = Quote.all

	end
	def show
		@quote = Quote.find(params[:id])
	end

	def new
		@quote = Quote.new
	end

	def create
		@quote = Quote.new(quote_params)
		respond_to do |format|
			if @quote.save
				QuoteMailer.request_confirmation(@quote).deliver_now
				format.html {redirect_to root_path, notice: "Your request was sent sucessfully"}
				format.js
			else
				format.html {render :new}
			end
		end
	end
	def edit
		@quote = Quote.find(params[:id])
	end

	def destroy
		@quote = Quote.find(params[:id])
		@quote.destroy
		redirect_to quotes_url, notice: "Quote was sucessfully deleted"
	end


	private

	def quote_params
		params.require(:quote).permit(:f_name, :l_name, :company, :email, :telephone, :buz_size)
	end
end
