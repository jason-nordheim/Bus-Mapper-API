class BusesController < ApplicationController
    def index 
        @buses = Bus.all 
        render json: @buses 
    end 
    def show 
        @bus = find_bus_by_id() 
        render json: @bus
    end
    def create 
        @bus = Bus.create(bus_params)
        render json: @bus
    end 
    def update 
        @bus = find_bus_by_id()
        @bus.update(bus_params)
        render json: @bus 
    end 
    def destroy 
        @bus = find_bus_by_id()
        @bus.destroy() 
        render status: 200 
    end 

    private
    def find_bus_by_id
        Bus.find(params[:id])
    end  
    def bus_params
        params.require(:bus).permit(:tag, :driver,:current_route, :capacity)
    end 
end
