class MapsController < ApplicationController

  http_basic_authenticate_with name: "yousty", password: "yousty"

  before_action :load_map

  def index
    @icons = ['fav_map','info','arrow']
    @overlays = MapOverlay.where(map_name: @map).order('overlay_type')
  end

  def export
    @overlays = MapOverlay.where(map_name: @map).order('overlay_type')
  end


  private


  def load_map
    params[:map] ||= 0
    @map = MAPS[params[:map].to_i]
  end

end