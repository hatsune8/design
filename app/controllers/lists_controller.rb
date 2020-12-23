class ListsController < ApplicationController

  def index
  end

  def pop
  end

  def elegant
    @words = Word.all
  end

  def natural
  end


end
