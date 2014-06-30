require 'createsend'

auth = {
  :access_token => "ARUaEHRYoBdAp6QN7FvBzoIyNA==",
  :refresh_token => "AdT+tG7i4JZLok8yABXkVqcyNA=="
}

cs = CreateSend::CreateSend.new auth

clients = cs.clients
clients.each do |cl|
  p "Client: #{cl.Name}"
  client = CreateSend::Client.new auth, cl.ClientID
  p "- Campaigns:"
  client.campaigns.each do |cm|
    p "  - #{cm.Subject}"
  end
end