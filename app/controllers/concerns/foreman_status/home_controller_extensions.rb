module ForemanStatus
  module HomeControllerExtensions
    extend ActiveSupport::Concern

    included do
      # redefine status method
      define_method :status do
        status_override
      end
    end

    def status_override
      @scenario = ForemanStatus::Scenario.latest.first

      render '_empty' unless @scenario
    end
  end
end
