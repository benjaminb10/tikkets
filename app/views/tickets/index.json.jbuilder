json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :title, :body
  json.url ticket_url(ticket, format: :json)
end
