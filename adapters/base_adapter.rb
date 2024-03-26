module RubyAiBridge
  module Adapters
    class BaseAdapter
      def initialize(api_key)
        @api_key = api_key
      end

      def send_request
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
      end
    end
  end
end
