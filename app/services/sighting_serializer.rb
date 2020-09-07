class SightingSerializer

    initialize(sighting_object)
    @sighting_object = sighting_object
    end 

    def to_sterilized_json
        @sighting_object.to_json(:include =>
        {
            :bird => {:only [:name, :species]},
            :location => {:only [:latitude, :longitude]}
        }, :except => [:updated_at])
    end 

end 