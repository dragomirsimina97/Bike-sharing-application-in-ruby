class Bike	< ActiveRecord::Base
	def create
		Bik.create(bike_param)
	end
	private
	def bike_param
		params.require(:bik).permit(:Bike_ID,:State, :Station, :Time)
	end

end
