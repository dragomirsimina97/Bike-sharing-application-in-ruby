class BikesController < ApplicationController
  def index
    @stations = Bike.all
  end


 def show
   id = params[:id] # retrieve movie ID from URI route
   @stations = Bike.find(id) # look up movie by unique ID
   # will render app/views/movies/show.html.haml by default
 end

 def new
 #	default:	render	’new’	template
 end

 def create
   @stations = Bike.create!(bike_param)
   redirect_to bikes_path
 end

 def bike_param
   params.require(:bikes).permit(:Bike_ID, :State, :Station, :Time)
 end

 def edit
  @stations = Bike.find params[:id]
 end

 def update
  @stations = Bike.find params[:id]
  @stations.update_attributes!(bike_param)
  flash[:notice] = "#{@stations.Bike_ID} was successfully updated."
  redirect_to bikes_path(@stations)
 end

 def destroy
  @stations = Bike.find(params[:id])
  @stations.destroy
  flash[:notice] = "Bike '#{@stations.Bike_ID}' deleted."
  redirect_to bikes_path
end

end
