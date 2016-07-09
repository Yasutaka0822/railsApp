class LessonController < ApplicationController
  def step1
    render text: "param test Mr.#{params[:name]}"
  end

  def step2
    render text: params[:controller] + "#" +  params[:action]
  end

  def step22
    render text: request.env["HTTP_USER_AGENT"] + request.headers["User-Agent"]
  end
end
