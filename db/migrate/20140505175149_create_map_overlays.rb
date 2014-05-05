class CreateMapOverlays < ActiveRecord::Migration
  def change
    create_table :map_overlays do |t|
      t.string :map_name
      t.string :left
      t.string :top
      t.string :object_id
      t.string :overlay_type
      t.string :value
      t.string :width

      t.timestamps
    end
  end
end
