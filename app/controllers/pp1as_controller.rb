class Pp1asController < ApplicationController
  def new
    @pp1 = Pp1.find(params[:pp1_id])
    @pp1a = Pp1a.new
  end

  def create
    @pp1 = Pp1.find(params[:pp1_id])
    @pp1a = Pp1a.new(pp1a_params)
    @pp1a.pp1 = @pp1
    @pp1a.user = current_user
    # require 'html_massage'

  html = %{
    <html>
      <head>
        <script type="text/javascript">document.write('I am a bad script');</script>
      </head>
      <body>
      <p>
        <%= @pp1.date %> <%= @pp1.week %><%= @pp1.yinli %>，<%= @pp1.weather %>
        <br>
        <%= @pp1.begin_time %>出门<%= @pp1.finish_time %>进门。
        <br>
        从<%= @pp1.from_where %><%= @pp1.how_to_go %>到<%= @pp1.main_place %>，<%= @pp1.run_begin_time %>到<%= @pp1.run_finish_time %>之间，<%= @pp1.how_long_time %>跑了<%= @pp1.how_long_kilos %>千米。<%= @pp1.stretch_or_not %>拉伸，<%= @pp1.how_to_go_back %>回<%= @pp1.back_to_where %>。
  <br>
        人：<%= @pp1.about_people %>
  <br>
        想：<%= @pp1.about_ideas %>
  <br>
        遇：<%= @pp1.about_serendipities %>
  <br>
        它：<%= @pp1.about_others %>

       </p>
      </body>
    </html>
  }
  @pp1a.content = ReverseMarkdown.convert html
  # => "This is some _great_ content!"
    if @pp1a.save
      redirect_to pp1_pp1a_path(@pp1a)
    else
      render :new
    end
  end

  def show
    @pp1 = Pp1.find(params[:pp1_id])
    @pp1a = Pp1a.find(params[:id])
  end
  private
  def pp1a_params
    params.require(:pp1a).permit(:content)
  end
end
