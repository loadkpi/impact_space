require_relative 'mixins/organization'

module ImpactSpace
  class Company < ImpactSpace::Base
    uri 'company'

    extend ImpactSpace::Mixins::Organization

    scope :operational, ->(op) { with(:operational).where(op: op) }
    # TODO: GET /company/funding
  end
end