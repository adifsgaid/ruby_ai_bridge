require_relative 'adapters/claude_adapter'
require_relative 'adapters/openai_adapter'
require_relative 'adapters/gemini_adapter'

module RubyAiBridge
  class Client
    attr_reader :adapter

    def initialize(api_key:, adapter:)
      @api_key = api_key
      @adapter = load_adapter(adapter)
    end

    def send_text(text)
      @adapter.send_request(text)
    end

    private

    def load_adapter(adapter)
      case adapter
      when :claude
        Adapters::ClaudeAdapter.new(@api_key)
      when :openai
        Adapters::OpenAIAdapter.new(@api_key)
      when :gemini
        Adapters::GeminiAdapter.new(@api_key)
      else
        raise ArgumentError, "Unknown adapter: #{adapter}"
      end
    end
  end
end
