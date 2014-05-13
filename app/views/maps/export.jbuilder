json.set! @map do
  json.array! @overlays, partial: 'overlay', as: :overlay
end