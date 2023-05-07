require 'simple_job'
require 'long_running_job'


class JobsController < ApplicationController
  def create
    id = params[:id]
    simple = params[:simple]
    succeeds = params[:succeeds]

    if simple
      simple_job = SimpleJob.new
      simple_job.delay
    else
      long_running_job = LongRunningJob.new
      long_running_job.delay
    end

  end
end
