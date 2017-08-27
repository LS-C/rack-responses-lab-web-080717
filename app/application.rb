class Application

require 'date'

  def call(env)
    resp = Rack::Response.new


    f= Time.now.to_s
    time = f.split(" ")[1]
    hours = time.split(":")[0].to_i

    if hours < 12
        resp.write "Good Morning!"
    else
        resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
