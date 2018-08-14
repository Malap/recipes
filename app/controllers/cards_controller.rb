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
    	 @card = Card.find(params[:id])
    	  @card.destroy
    	  respond_to do |format|
     	format.html {redirect_to cards_url}

    	 # 	 respond_to do |format|
      # format.html { redirect_to cards_url, notice: 'Card was successfully destroyed.' }
      # format.json { head :no_content }
   
    end
end
     def rename_first_record
    	@card = Card.find(params[:id])
    	@card.name = "card updated  from member action"
    	@card.save
    	redirect_to cards_path
     end
     def rename_second_record
     	@card = Card.find(params[:id])
     	@card.name = "card updated from member action 2"
     	@cards.save
     	redirect_to cards_path
     end
     def rename_first_ten_records
     	@cards = Card.first(10)
     	@cards.each do |card|
        @card.name = "card updated member from member action venkey"
        @card.save
    end
     redirect_to cards_path
 end 

    private 
      def card_params
      	params.require(:card).permit(:name,:category,:industry)
      end
     
end

