class RackMiddleware
  def initialize(app)
    @app = app
  end
  def call(env)
    start = Time.now
    status, headers, body = @app.call(env)  # call our Sinatra if __FILE__ == $PROGRAM_NAME
    stop = Time.now
    puts "Responsne time: #{stop-start}" # display on console
    [status, headers, body]
  end
end
