class AddMovieOptionsToQueJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :queue_jobs, :movie_option, :json
  end
end
