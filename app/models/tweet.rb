require_relative '../../db/config'
require_relative 'congress_member'
require 'twitter'

class Tweet < ActiveRecord::Base
  validates :tweet_description, uniqueness: true
  belongs_to :congress_member

end