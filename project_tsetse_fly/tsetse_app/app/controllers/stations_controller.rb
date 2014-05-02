class StationsController < ApplicationController
before_filter :signed_in_user, only: [:index, :create, :new, :edit, :update, :destroy]

  def index
    @station = Station.all
  end

  def new
    @station = Station.new
  end

  def create
    station = Station.create(station_params)
    redirect_to station
  end

  def show
    @station = Station.find(params[:id])
  end

  def edit
    @station = Station.find(params[:id])
  end

  def update
    station = Station.find(params[:id])
    station.update_attributes(station_params)
    redirect_to(station)
  end

  def destroy
    station = Station.find(params[:id])
    station.delete
    redirect_to station_path
  end

  private
    def station_params
      params.require(:station).permit(:brand, :latitude, :longitude, :state, :city, :highway_exit, :unleaded, :midgrade, :premium, :diesel, :store_num)
    end
end
