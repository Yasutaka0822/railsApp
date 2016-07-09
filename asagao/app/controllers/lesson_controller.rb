class LessonController < ApplicationController
  before_action :set_message, only: [:step7, :step77]
#  before_action :do_another, expect: [:step1, :step2, :step3]


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

  def step77
    render text: @message
  end

  def step8
    @price = (1000 * 19).floor
  end

  def step9
    @price = 10000
    render "step8"
  end

  def step10
    @comment = "<script>alert('危険!')</script>こんにちは"
  end

  def step11
    @comment = "<strong>安全なHTML</strong>"
  end

  def step12
    @population = 704414
    @surface = 141.31
  end

  def step13
    @time = Time.now
  end

  private
  def set_message
    @message = "hello"
  end
end
