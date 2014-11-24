require_relative '../config'

class CreateTweets < ActiveRecord::Migration
  def change 
    create_table :tweets do |t|
      t.belongs_to :congress_member
      t.string :tweet_description
      t.timestamp
    end
  end
end