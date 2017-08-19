require 'spyke'

module ImpactSpace
  class Base < Spyke::Base
    def self.connection
      api_url = "#{ImpactSpace::Config.api_base_url}?key=#{ImpactSpace::Config.api_key}"
      Faraday.new(url: api_url) do |c|
        c.request   :json
        c.use       ImpactSpace::Parser
        c.adapter   Faraday.default_adapter
      end
    end

    def self.find_by(conditions)
      where(conditions).first
    end
  end
end