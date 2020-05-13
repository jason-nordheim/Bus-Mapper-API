class BusesController < ApplicationController
    def index 
        @buses = Bus.all 
        render json: @buses 
    end 
    def show 
    end
    def create 
        @bus = Bus.create(bus_params)
        render json: @bus
    end 
    def update 
    end 
    def destroy 
    end 

    private
    def bus_params
        params.require(:bus).permit(:tag, :driver,:current_route, :capacity)
    end 
end
