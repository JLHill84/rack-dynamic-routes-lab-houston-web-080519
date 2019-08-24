class Application
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path == "/items"
      resp.write "Hooray!"
    else
      resp.write "Route not found"
      resp.status = 404
    end
    
  end
  
  # def checkItems
  #   itemName = @req.path.split("/items/").last
  #     if Item.all.include?(itemName)
  #       @resp.write "#{itemName.price}"
  #     else
  #       @resp.write "Item not found"
  #       @resp.status = 400
  #     end
  # end
  
end