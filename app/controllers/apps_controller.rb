class AppsController < ApplicationController
  def show
    render json: Event.get_metrics(params[:id]).to_json(only: [:num_events, :num_users])
  end
end


