class RoutesController < ApplicationController
	include RoutesHelper

	# before_filter :signed_in_user, only: [:create, :new, :edit, :update, :destroy]
 #  before_filter :check_route_owner, only: [:edit, :update, :destroy]

  def index
    @routes = Route.all
  end

  def new
    @route = Route.new
  end

  def create
    route = Route.create route_params
    redirect_to(route)
  end

  def show
    @route = Route.find(params[:id])
    @stations = @route.stations
    # render :show
  end

  def edit
    @route = Route.find(params[:id])
  end

  def update
    route = Route.find(params[:id])
    route.update_attributes route_params
    redirect_to(route)
  end

  def destroy
    route = Route.find(params[:id])
    route.delete
    redirect_to(routes_path)
  end

  private
    def route_params
      params.require(:route).permit(:starting_point, :end_point)
    end
end
