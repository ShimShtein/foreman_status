require 'foreman_status/engine'

module ForemanStatus
    def self.table_name_prefix
      'foreman_status_'
    end

    def use_relative_model_naming
      true
    end
end
