require 'multi_json'

module ImpactSpace
  class Parser < Faraday::Response::Middleware
    def parse(body)
      MultiJson.load(body, symbolize_keys: true)

      # TODO: make user-friendly error handling
      # (errors from ImpactSpace are going as HTML)
      #
      # rescue MultiJson::ParseError => exception
    end
  end
end