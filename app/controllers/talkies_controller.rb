class TalkiesController < ApplicationController

  def index
    @talkies = Talkie.all
  end

  def create
    @talkie = Talkie.new(params[:talkie])
    @talkie.save!
    redirect_to talkies_path
  end

  def new
    @talkie = Talkie.new
  end

end
