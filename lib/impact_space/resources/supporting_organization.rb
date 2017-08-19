require_relative 'mixins/organization'

module ImpactSpace
  class SupportingOrganization < ImpactSpace::Base
    uri 'suporg'

    extend ImpactSpace::Mixins::Organization
  end
end