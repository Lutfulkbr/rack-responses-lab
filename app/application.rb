class Application

    def call(env)
        resp = Rack::Response.new

        case Time.now.hour
        when 4..11 then resp.write "Good Morning"
        when 12..17 then resp.write "Good Afternoon"
        else
          resp.write "Hello!"
        end
        resp.finish
    end

end