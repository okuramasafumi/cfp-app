class EventsController < ApplicationController
  skip_before_action :current_event, only: [:index]
  before_filter :require_event, only: [:show]

  def index
    render locals: {
      events: Event.recent.decorate
    }
  end

  def show
  end
end
