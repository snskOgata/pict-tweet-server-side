class TweetsController < ApplicationController
  def show
    @tweet = Tweet.find(params[:id])
    render json: {
      id: @tweet.id,
      title: @tweet.title,
      image: @tweet.image_url,
      content: @tweet.content,
      user_id: @tweet.user.id,
      user_name: @tweet.user.name
    }
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      render json: @tweet
    else
      render json: {error: "Tweetの作成に失敗しました"}
    end
  end

  private
   def tweet_params
    params.permit(:title, :image,:content, :user_id).merge(user_id: params[:user_id])
   end
end
