class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def update
    Event.unread.update_all read: true
  end
end
