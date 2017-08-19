require 'impact_space/config'
require "impact_space/version"

require "impact_space/resources/base"
require "impact_space/resources/company"
require "impact_space/resources/financial_organization"
require "impact_space/resources/supporting_organization"

module ImpactSpace
  def self.configure(config)
    ImpactSpace::Config.configure(config)
  end
end
