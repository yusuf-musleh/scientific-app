class LongRunningJob < ApplicationJob
  queue_as :long_running_jobs

  def perform
    # Do nothing since the we will perform all the
    # job related work in the Python Worker
  end

end
