class MapsController < ApplicationController

  http_basic_authenticate_with name: "yousty", password: "yousty"

  def index
    params[:map] ||= "testmap"
    @icons = ['fav','check', 'arrow']
    @overlays = MapOverlay.where(map_name: params[:map]).order('overlay_type')
  end

end