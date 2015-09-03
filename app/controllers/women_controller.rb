class WomenController < ApplicationController
	
#show all women's fashion in db
	def index
		render :index 
		@women = Woman.all
		
	end
end
