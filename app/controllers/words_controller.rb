class WordsController < ApplicationController


  def new
    @word = Word.new
  end

  def index
    @words = Word.all
  end

  def show
  end

  def create
    @word = Word.new(word_params)
    if @word.save
      flash[:success] = "投稿が完了しました。"
      redirect_to words_path
    else
      flash.now[:warning] = "投稿に失敗しました。項目を埋めてください。"
      render "new"
    end
  end

  def destroy
    @word = Word.find(params[:id])
    if @word.destroy
      flash[:success] = "投稿は削除されました。"
      redirect_to words_path
    end
  end

  private

  def word_params
    params.require(:word).permit(:english, :japanese)
  end


end
