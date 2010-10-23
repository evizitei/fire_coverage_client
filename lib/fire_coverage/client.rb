require "tag_it"

module FireCoverage
  class Client
    def run!
      port = SerialPort.new(PORT,:baud=>BAUD_RATE,:data_bits=>DATA_BITS,:stop_bits=>STOP_BITS)
      tracker = TagIt::TagTracker.new(port)
      watcher = FireCoverage::TagWatcher.new
      tracker.add_observer(watcher)
      tracker.start!
    end
  end
end
