class CreateForemanStatusExecutables < ActiveRecord::Migration
  def change
    create_table :foreman_status_executables do |t|
      t.string :name
      t.string :status
      t.string :message
      t.references :foreman_status_scenario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
