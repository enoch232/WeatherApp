class SearchesController < ApplicationController
  def index
  	@searches = Search.all
  end
  def new
  	@search = Search.new
  end
  def create
  	@search = Search.new(params_search)

  	if @search.save
  		respond_to do |format|
  			format.html {redirect_to root_path }
  			format.js
  		end
  		
  	else
  		render :new
  	end
  end
  def destroy
  	@search = Search.find(params[:id])
  	@search.destroy
  	respond_to do |format|
  		format.html{ redirect_to root_path }
  		format.js
  	end
  end
  private
  def params_search
  	params.require(:search).permit(:state, :city)
  end
end
