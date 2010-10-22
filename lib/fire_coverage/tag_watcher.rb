require "httparty"
module FireCoverage
  class TagWatcher
    def update(tag,strength,event)
      if event == :tag_arrived
        HTTParty.get(ARRIVAL_WEB_URL,:query=>{:receiver=>RECEIVER_ID,:tag=>tag})
      elsif event == :tag_departed
        HTTParty.get(DEPARTURE_WEB_URL,:query=>{:receiver=>RECEIVER_ID,:tag=>tag})
      end
    end
  end
end