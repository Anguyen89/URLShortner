class ShortenedUrl < ActiveRecord::Base
validates :short_url, :long_url, :submitter_id, presence: true
validates :short_url, uniqueness: true
#parens are optional for belongs_to and has_many
belongs_to :submitter,
  primary_key: :id,
  foreign_key: :submitter_id,
  class_name: :User

  def self.random_code
    random_code = SecureRandom::urlsafe_base64
    while ShortenedUrl.exists?(short_url: random_code)
      random_code = SecureRandom::urlsafe_base64
    end
    random_code
  end

  def self.create_for_user_and_long_url!(user, long_url)
    #create is using ShortenedUrl.new and create for the method and
    ShortenedUrl.create!(long_url: long_url, short_url: self.random_code, submitter_id: user.id)
    #create takes an options hash
  end



end
