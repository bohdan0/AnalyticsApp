class EventsController < ApplicationController
  def create
    @event = Event.new(app_id: app_id, user_id: user_id, name: name)

    if @event.save
      render :create
    else
      render json: ['Missing parameter'], status: 500
    end
  end

  def show
    @event = Event.find(params[:id])

    if @event
      render :show
    else
      render json: ['Not found'], status: 404
    end
  end

  private

  def app_id
    params[:app_id]
  end

  def user_id
    params[:user_id]
  end

  def name
    params[:name]
  end
end
