# require 'createsend'

# CM_AUTH = {
#   :access_token => "ARUaEHRYoBdAp6QN7FvBzoIyNA==",
#   :refresh_token => "AdT+tG7i4JZLok8yABXkVqcyNA=="
# }

# cs = CreateSend::CreateSend.new CM_AUTH

# clients = cs.clients
# @client = CreateSend::Client.new CM_AUTH, cs.clients.first.ClientID

# # clients.each do |cl|
# #   p "Client: #{cl.Name}"
# #   client = CreateSend::Client.new CM_AUTH, cl.ClientID
# #   @client = client
# #   p "- Campaigns:"
# #   client.campaigns.each do |cm|
# #     p "  - #{cm.Subject}"
# #   end
# # end

# @pre_launch_cm = {
# 	campaings: {
# 		id: "4743fe83e0345e64ab9def6e57aa0ff5",
# 		name: "pre_launch"
# 	},
# 	lists: {
# 		id: "ef063a1aa5f8bc72d4bd729b1730bf9e",
# 		title: "pre_launch"
# 	}
# }

# # CreateSend::List.create(CM_AUTH, "88ddf8c2d7aaad62ed7a36ba879cf54d", "pre_launch_subscriber", "http://zasny.com/unsubscribe", false, "http://zasny.com/confirm")
# # => "ef063a1aa5f8bc72d4bd729b1730bf9e"

# # CreateSend::Campaign.create(CM_AUTH, "88ddf8c2d7aaad62ed7a36ba879cf54d", "Welcome to Zasny Store", "Pre Launch Subscriber", "Zasny", "welcome@zasny.com", "support@zasny.com", "http://54.254.211.166/404", "", ["ef063a1aa5f8bc72d4bd729b1730bf9e"], [])
# #  => "4743fe83e0345e64ab9def6e57aa0ff5"

# # CreateSend::Subscriber.add(CM_AUTH, "ef063a1aa5f8bc72d4bd729b1730bf9e", "ishank_18@yahoo.com", "Ishank Gupta", [], false)
