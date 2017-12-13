json.extract! video, :id, :title, :URL, :created_at, :updated_at
json.url video_url(video, format: :json)
