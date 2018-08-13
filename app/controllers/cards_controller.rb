class CardsController < ApplicationController

def index
  @cards= Card.all
 end

def show
  @cards = Card.find(params[:id])
end

def new
	@card = Card.new
end

def create
	@card = Card.new(card_params)
	@card.save
	redirect_to cards_path
	end
	def edit
		@cards = Card.find(parms[:id])
	end
    
    def Update
    	@card = Card.find(parms[:id])
    	@card = Card.update(card_params)
    	redirect_to cards_path
    end
    def Destroy
    	# @card = Card.find(params[:id])
    	#  @card.destroy
    	#  respond_to do |format|
    	#  	format.html {redirect_to cards_url}

    	 	 respond_to do |format|
      format.html { redirect_to cards_url, notice: 'Card was successfully destroyed.' }
      format.json { head :no_content }
   
    end
end
     private 
      def card_params
      	params.require(:card).permit(:name,:category,:industry)
      end
end

