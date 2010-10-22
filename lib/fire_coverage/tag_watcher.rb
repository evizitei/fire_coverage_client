require "httparty"
module FireCoverage
  class TagWatcher
    def update(tag,strength,event)
      if event == :tag_arrived
        HTTParty.get('http://localhost:3000/rfid/tag_arrived',:query=>{:station=>1,:tag=>tag})
      elsif event == :tag_departed
        HTTParty.get('http://localhost:3000/rfid/tag_departed',:query=>{:station=>1,:tag=>tag})
      end
    end
  end
end