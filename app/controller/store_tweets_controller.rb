require_relative '../../db/config'
require_relative '../models/congress_member'
require_relative '../models/tweet'
require 'twitter'

  def store_tweets(firstname, twitter_id)
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "By4xvw5Te5PssBIgdO1BeFxNs"
      config.consumer_secret     = "ElIkbSXrKZenEUqPU2AoaPkgW13Et5YA9voH9dkOkvbCVmAKd5"
      config.access_token        = "123976307-AwqybvaEPDjVU7RExyipBPWTPWvUz1kUfY4raf3G"
      config.access_token_secret = "iA90lvyaNN3cXgPRAlOpbO1RcOLCkXiQFtMpRXxDzFUlP"
    end

    tweets = client.user_timeline(twitter_id)[0..9]
    legislator_id = CongressMember.find_by(firstname: firstname).id

    tweets.each do |tweet|
      Tweet.create(congress_member_id: legislator_id, tweet_description: tweet.text)
    end
  end