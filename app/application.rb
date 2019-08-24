class Application
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/<ITEMNAME>)
      if Item.all.include?(ITEMNAME)
        resp.write "#{ITEMNAME.price}"
      else
        resp.write "Item not found"
        resp.status = 400
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
    
  end
  
end