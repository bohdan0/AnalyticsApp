class EventsController < ApplicationController
  def create
    App.find_by_app_id(app_id) || App.create(app_id: app_id)
    User.find_by_user_id(user_id) || User.create(user_id: user_id)
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
