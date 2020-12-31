class ListsController < ApplicationController

  def index
  end

  def pop
  end

  def elegant
    @words = Word.all
  end

  def natural
    @words_random = Word.order("RANDOM()").limit(5)
  end


end
