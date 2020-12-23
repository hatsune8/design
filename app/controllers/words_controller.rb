class WordsController < ApplicationController


  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
    @word.save
    redirect_to list_elegant_path
  end

  private

  def word_params
    params.require(:word).permit(:english, :japanese)
  end


end
