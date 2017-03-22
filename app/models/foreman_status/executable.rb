module ForemanStatus
  class Executable < ActiveRecord::Base
    belongs_to :foreman_status_scenario
  end
end
