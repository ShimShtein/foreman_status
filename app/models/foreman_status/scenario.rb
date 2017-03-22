module ForemanStatus
  class Scenario < ActiveRecord::Base
    scope :latest, -> { order(run_date: :desc).limit(1) }

    has_many :executables, foreign_key: :foreman_status_scenario_id
  end
end
