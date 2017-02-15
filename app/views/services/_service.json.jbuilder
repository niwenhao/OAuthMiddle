json.extract! service, :id, :name, :keyword, :url, :callsummary, :summaryStart, :created_at, :updated_at
json.url service_url(service, format: :json)