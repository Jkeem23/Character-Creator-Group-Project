class GatherersController < ApplicationController
    def create 
        @character = Character.find(params[:character_id])
        @gatherer = @character.gatherers.create(comment_params)
        redirect_to character_path(@character)
    end
    
    private
        def comment_params
            params.require(:gatherer).permit(:gatherType, :gatherLevel)
        end
end
