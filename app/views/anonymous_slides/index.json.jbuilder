json.array!(@anonymous_slides) do |anonymous_slide|
  json.extract! anonymous_slide, :id
  json.url anonymous_slide_url(anonymous_slide, format: :json)
end
