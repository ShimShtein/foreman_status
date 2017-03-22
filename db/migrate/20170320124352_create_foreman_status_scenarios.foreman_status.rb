class CreateForemanStatusScenarios < ActiveRecord::Migration
  def change
    create_table :foreman_status_scenarios do |t|
      t.string :name
      t.datetime :run_date

      t.timestamps null: false
    end
  end
end
