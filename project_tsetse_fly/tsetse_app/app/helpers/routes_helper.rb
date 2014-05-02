module RoutesHelper
	def check_route_owner
    route = current_user.routes.where(:id => params[:id]).first
    if route.nil?
      flash[:error] = "That's not your route."
      redirect_to route_path(params[:id])
    end
  end
end
