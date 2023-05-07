require 'delayed_job_web'

Rails.application.routes.draw do
  root "scientific_app#index"

  post "/jobs", to: "jobs#create"

  # Delay Jobs Dashboard
  mount DelayedJobWeb => '/delayed_jobs'
end
