class SightingsController < ApplicationController

    def index
        sightings = Sighting.all 
        render json: SightingSerializer.new(sightings).to_sterilized_json
    end     

    def show
        sighting = Sighting.find(params[:id])
        render json: SightingSerializer.new(sighting).to_sterilized_json
    end
end
