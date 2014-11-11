class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :timeoutable, :omniauthable, :omniauth_providers => [:google_oauth2, :twitter]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
  :provider, :uid, :name, :image, :feed_ids
  # attr_accessible :title, :body

  has_many :bookmarks
  has_many :subscriptions
  has_many :feeds, through: :subscriptions
  has_many :articles, through: :feeds

  def self.find_for_google_oauth2(auth, signed_in_user=nil)
    if user = signed_in_user || User.find_by_email(auth.info.email)
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name if user.name.blank?
      user.image = auth.info.image if user.image.blank?
      user.save
      user
    else
      where(auth.slice(:provider, :uid)).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.name = auth.info.name
        user.email = auth.info.email
        user.image = auth.info.image
        user.password = Devise.friendly_token[0,20]
        user.skip_confirmation! # don't require email confirmation
      end
    end
  end
    def self.find_for_twitter(auth, signed_in_user=nil)
      twitter_email = auth.info.nickname.downcase + "@twitter.com"
    if user = signed_in_user || User.find_by_email(twitter_email)
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name 
      user.image = auth.info.image 
      user.save
      user
  else
      where(auth.slice(:provider, :uid)).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.name = auth.info.name
        user.email = twitter_email
        user.image = auth.info.image
        user.password = Devise.friendly_token[0,20]
        # user.skip_confirmation! # don't require email confirmation
      end
    end
  end

end
