module ImpactSpace
  class Config
    class << self

      def configure(config)
        config.symbolize_keys!
        @api_key = config[:api_key]
        @api_base_url = config[:api_base_url] || 'https://impactspace.com/api'
        self
      end

      def api_key
        raise ImpactSpace::ConfigurationError.new('API Key is missing') unless @api_key
        @api_key
      end

      def api_base_url
        raise ImpactSpace::ConfigurationError.new('API URL is missing') unless @api_base_url
        @api_base_url
      end
    end
  end

  class ConfigurationError < StandardError; end
end