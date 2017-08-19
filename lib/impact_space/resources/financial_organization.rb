require_relative 'mixins/organization'

module ImpactSpace
  class FinancialOrganization < ImpactSpace::Base
    uri 'finorg'

    extend ImpactSpace::Mixins::Organization

    scope :operational, ->(op) { with(:operational).where(op: op) }
    # TODO: GET /finorg/investment
  end
end