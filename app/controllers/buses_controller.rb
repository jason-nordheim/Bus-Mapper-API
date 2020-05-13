class BusesController < ApplicationController
    def index 
        @buses = Bus.all 
        render json: @buses 
    end 
    def show 
    end
    def create 
    end 
    def update 
    end 
    def destroy 
    end 
end
