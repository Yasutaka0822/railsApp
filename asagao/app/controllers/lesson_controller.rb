class LessonController < ApplicationController
  before_action :set_message, only: :step7


  def step1
    render text: "param test Mr.#{params[:name]}"
  end

  def step2
    render text: params[:controller] + "#" +  params[:action]
  end

  def step22
    render text: request.env["HTTP_USER_AGENT"] + request.headers["User-Agent"]
  end

  def step3
    redirect_to action: "step4" , status: 301
  end

  def step4
    render text: "move to step4"
  end

  def step5
    flash[:notice] = "move to step6"
    redirect_to action: "step6"
  end

  def step6
    render text: flash[:notice]
  end

  def step7
    render text: @message
  end

  private
  def set_message
    @message = "hello"
  end
end
