class PlacesController < ApplicationController

    def index
      @places = Places.all
    end
  
    def show
      @place = Place.find(params["id"])
    end
  
    def new
      @place = Place.new
    end
  
    def create
      @place = Place.new(params["name"])
      @place.save
      redirect_to "/places"
    end
  
    def edit
      @place = Place.find(params["id"])
    end
  
    def update
      @place = Place.find(params["id"])
      @place.update(params["name"])
      redirect_to "/places"
    end
  
    def destroy
      @place = Place.find(params["id"])
      @place.destroy
      redirect_to "/places"
    end
  
  end
  