class Application
  
  @@items = []
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
     itemName = req.path.split("/items/").last
     if @@items.include?(itemName)
        @resp.write "#{itemName.price}"
    else
      resp.write "Route not found"
      resp.status = 404
    end
  end
end
end

# I don't know why this code won't work, seems to me that
# it's doing the same thing as the solution ".find"
# itemName = req.path.split("/items/").last
#     if @@items.include?(itemName)
#         @resp.write "#{itemName.price}"