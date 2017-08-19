module ImpactSpace
  module Mixins
    module Organization
      def self.included(base)
        base.class_eval do
          scope :geography, ->(geo) { with(:geography).where(geo: geo) }
          scope :social, ->(soc) { with(:social).where(soc: soc) }
          scope :environmental, ->(env) { with(:environmental).where(env: env) }
        end
      end
    end
  end
end