class AppsController < ApplicationController
  def show
    @app = App.includes(:events, events: [:user]).where(app_id: params[:id])

    if @app
      @num_events = @app[0].events.size
      @num_users = @app[0].events.map(&:user).uniq.size
      render :show
    else
      render json: ['Not found'], status: 404
    end
  end
end


