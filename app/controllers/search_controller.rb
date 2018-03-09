class SearchController < ApplicationController

	def search
		@clients = Client.ransack(name_cont: params[:q]).result(distinct: true)

	    respond_to do |format|
	      format.html {}
	      format.json {
	        @clients  = @clients.limit(5)
	      }
	  end
	end

end
