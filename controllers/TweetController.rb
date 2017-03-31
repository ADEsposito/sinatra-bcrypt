class TweetController < ApplicationController
  get '/' do
    @tweets = Tweet.all
    @tweets.to_json
  end

  get '/:user_id' do
    user_id = params[:user_id]
    @user = User.find(user_id)
    @tweets = @user.tweets
    erb :user_tweets
  end

  post '/' do
    @tweet = Tweet.new
    @tweet.content = params["content"]
    @tweet.user_id = session[:user_id]

    @tweet.save
    redirect '/home'
  end

  patch '/:id' do

  end

  delete '/:id' do

  end
end
