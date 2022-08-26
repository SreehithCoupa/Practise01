class MainController < ApplicationController
  def index
  end
  def about
    @id=params[:id].to_i
  end
  def hello
    redirect_to action: 'index'
  end
end
