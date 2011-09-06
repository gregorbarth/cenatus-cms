class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :twitter, :set_facebook_headers
  
  def twitter
    require "twitter"
    # require "dalli"

    # cache = Dalli::Client.new 'mc5.ec2.northscale.net'
    begin
      @tweets = Twitter.user_timeline(CenatusCms::Application::TWITTER_NAME, {:count => 4})
      # cache.set("shopsilverburn", @tweets) if @tweets && Rails.env != "production"
    # rescue Twitter::BadRequest  => erl
    #   if Rails.env != "production"
    #     @tweets = cache.get("shopsilverburn").first||default
    #     logger.error("MSP rate limit exceeded: #{erl}")
    # end
    rescue Exception => e
      logger.error("MSP error fetch tweets: #{e}")
    end
  end   

  def set_facebook_headers
    @og_title = CenatusCms::Application::SITE_NAME
    @og_type = "website"
    @og_url = CenatusCms::Application::SITE_URL
    @og_image = CenatusCms::Application::SITE_LOGO
    @og_site_name = CenatusCms::Application::SITE_NAME
    @og_admins = CenatusCms::Application::FB_ADMIN
  end
end
