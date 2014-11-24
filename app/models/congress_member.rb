require_relative '../../db/config'

class CongressMember < ActiveRecord::Base
  validates :phone_checker, format: {with: /\d{10}/, on: :create}

  def phone_checker
    phone.gsub!(/\D/, "")
  end
end