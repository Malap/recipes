class WineMartsController < ApplicationController
	def index
		@wine_marts = WineMart.all
	end
	def show
		@wine_mart = WineMart.find(params[:id])
	end

	def new
		@wine_mart = WineMart.new
	end

	def create
		@wine_mart = WineMart.new(wine_mart_params)
		@wine_mart.save
	    redirect_to wine_mart_path(@wine_mart)
	     
	end

	def update
		@wine_mart = WineMart.find(params[:id])
		@wine_mart.update(wine_mart_params)
		redirect_towine_mart_path
	end

	def destroy
		@wine_mart = WineMart.find(params[:id])
		@wine_mart.destroy
		redirect_to wine_mart_path
	end
	private 
	 def wine_mart_params
	 	params.require(:wine_mart).permit(:name,:category,:industry)
      end
  end

