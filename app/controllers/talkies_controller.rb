class TalkiesController < ApplicationController

  def index
    @talkies = Talkie.all
  end

end
