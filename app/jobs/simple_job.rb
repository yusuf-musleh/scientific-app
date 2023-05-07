class SimpleJob < ApplicationJob
  queue_as :simple_jobs

  def perform
    # Do nothing since the we will perform all the
    # job related work in the Python Worker
  end

end
