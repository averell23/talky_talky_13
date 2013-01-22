class TalkiesController < ApplicationController

  before_filter :authenticate_user!, :only => [:create, :new]
  before_filter :make_talkie, :only => [:create, :new]

  def index
    @talkies = Talkie.order('id DESC').limit(20)
    if(params[:user_id])
      @talkies = @talkies.where(user_id: params[:user_id])
    end
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
    @talkie.user = current_user
  end

end
