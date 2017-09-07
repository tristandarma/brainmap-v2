class HomeController < ApplicationController


  	def new
  		@h= Home.new(home_params)
  	end

    

  	private
  	def home_params
  		params.require(:home).permit(:title,:content)
  	end

end
