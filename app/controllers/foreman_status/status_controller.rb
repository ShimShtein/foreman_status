module ForemanStatus
  # Example: Plugin's HostsController inherits from Foreman's HostsController
  class StatusController < ::HostsController
    def index
      @scenario = Scenario.latest.first

      render '_empty' unless @scenario
    end

    def model_of_controller
      Scenario
    end
  end
end
