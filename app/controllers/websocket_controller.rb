class WebsocketController < WebsocketRails::BaseController
  #this seems to only work with non channels.
  def client_connected
    puts "new client"
  end

  def resize
    puts "Resize Message from UID: #{client_id}\n"
    puts "Resize Message: #{message.inspect}"
    broadcast_message :resize, message
  end

  def new_film
    puts "NewFilm Message from UID: #{client_id}\n"
    puts "NewFilm Message: #{message.inspect}"
    broadcast_message :new_film, message
  end
end