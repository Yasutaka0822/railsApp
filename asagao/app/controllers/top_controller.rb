class TopController < ApplicationController
  def index
    @message = 123
    @colors = ["red", "blue", "yellow", "pink"]
  end

  def about
  end
end
