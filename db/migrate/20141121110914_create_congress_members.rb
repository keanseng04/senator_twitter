require_relative '../config'

class CreateCongressMembers < ActiveRecord::Migration
    def change
    # HINT: checkout ActiveRecord::Migration.create_table
      create_table :congress_members do |t|
        t.string :title, :firstname, :middlename, :lastname, :name_suffix, :nickname, :party, :state, :district, :in_office, :gender, :phone, :fax, :website, :webform, :congress_office, :bioguide_id, :votesmart_id, :fec_id, :govtrack_id, :crp_id, :twitter_id, :congresspedia_url, :youtube_url, :facebook_id, :official_rss, :senate_class
        t.date :birthdate
        t.timestamps
      end

      # create_table :titles do |t|
      #   t.string :title_name
      # end

      # create_table :parties do |t|
      #   t.string :party_name
      # end

      # create_table :states do |t|
      #   t.string :state_name
      # end

    end

end