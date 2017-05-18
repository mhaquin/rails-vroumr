module ApplicationHelper
  def vehicle_picture(vehicle)
    if vehicle.photo?
      vehicle.photo.path
    else
      asset_path('voiture.png')
    end
  end

end
