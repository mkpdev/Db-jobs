class CreateQueueJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :queue_jobs do |t|
      t.integer :status, :null => false, :default => 0
      t.integer :priority
      t.datetime :started_at
      t.datetime :end_at
      t.integer :job_id
      t.time :runtime
      t.timestamps
    end
  end
end
