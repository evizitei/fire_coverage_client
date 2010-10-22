require "tag_it"
module FireCoverage
  class Client
    def run!
      port = SerialPort.new("/dev/tty.usbserial",:baud=>9600,:data_bits=>8,:stop_bits=>1)
      tracker = TagIt::TagTracker.new(port)
      watcher = FireCoverage::TagWatcher.new
      tracker.add_observer(watcher)
      tracker.start!
    end
  end
end
