class MapOverlaysController < ApplicationController

  def create
    overlay_params = params.require(:map_overlay).permit!
    MapOverlay.destroy_all map_name: overlay_params[:map_name].first
    unless params[:clear]
      MapOverlay.destroy_all map_name: overlay_params[:map_name].first
      (0...overlay_params[:object_id].count).each do |index|
        attribs = Hash[*overlay_params.keys.map{ |k| { k => overlay_params[k][index] } }.collect{|h| h.to_a}.flatten]
        MapOverlay.create!(attribs)
      end
    end
    redirect_to root_path(map: MAPS.index(overlay_params[:map_name].first)), notice: (params[:clear] ? 'Map cleared.' : 'Map saved.')
  end

end