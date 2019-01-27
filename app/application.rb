require 'time'

class Application

  def call(env)
    msg = "Why Hello There, Good "
    if Time.now.hour >= 12
      msg += "Afternoon."
    else
      msg += "Morning."
    end
    
    resp = Rack::Response.new
    resp.write msg
    resp.finish
  end
end