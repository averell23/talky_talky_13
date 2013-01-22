class TalkiesController < ApplicationController

  def index
    @talkies = Talkie.order('id DESC').limit(20)
  end

  def create
    @talkie = Talkie.new(params[:talkie])
    if @talkie.save
      redirect_to talkies_path
    else
      render :new
    end
  end

  def new
    @talkie = Talkie.new
  end

end
