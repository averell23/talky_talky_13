class TalkiesController < ApplicationController

  before_filter :authenticate_user!, :only => [:create, :new]
  before_filter :make_talkie, :only => [:create, :new]

  def index
    @talkies = Talkie.order('id DESC').limit(20)
  end

  def create
    if @talkie.save
      redirect_to talkies_path
    else
      render :new
    end
  end

  def new
  end

  private

  def make_talkie
    @talkie = Talkie.new(params[:talkie])
  end

end
