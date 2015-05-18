json.array!(@tqs) do |tq|
  json.extract! tq, :id, :tqid, :client, :projectname, :date, :impact, :query
  json.url tq_url(tq, format: :json)
end
