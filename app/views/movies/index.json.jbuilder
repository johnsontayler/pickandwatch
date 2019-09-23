json.array! @movies do |movie|
  json.extract! movie, :photo, :title, :id
end
