WebsocketRails::EventMap.describe do
  subscribe :client_connected, to: WebsocketController, with_method: :client_connected
  subscribe :resize,           to: WebsocketController, with_method: :resize
  subscribe :new_film,         to: WebsocketController, with_method: :new_film
end

redis_host = 'localhost'

WebsocketRails.setup do |config|
  config.standalone = true
  config.standalone_port = 8080
  config.synchronize = true
  config.redis_options = {:host => redis_host, :port => '6379'}
  config.thin_options = {:threaded => false}
end
