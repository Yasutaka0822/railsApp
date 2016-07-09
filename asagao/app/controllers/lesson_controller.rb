class LessonController < ApplicationController
  def step1
    render text: "param test Mr.#{params[:name]}"
end
