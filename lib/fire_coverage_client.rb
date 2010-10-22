require 'rubygems'
require 'bundler/setup'

module FireCoverage
  PORT = "/dev/tty.usbserial"
  BAUD_RATE = 9600
  DATA_BITS = 8
  STOP_BITS = 1
  RECEIVER_ID = 1
  ARRIVAL_WEB_URL = 'http://localhost:3000/rfid/tag_arrived'
  DEPARTURE_WEB_URL = 'http://localhost:3000/rfid/tag_departed'
end

require 'fire_coverage/client'
require 'fire_coverage/tag_watcher'