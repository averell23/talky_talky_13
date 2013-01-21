class TestController < ApplicationController


  def index
    @title = "My title"
  end

  def show
    @title = "My different title for the show action"
  end

end
