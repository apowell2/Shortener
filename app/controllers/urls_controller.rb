class UrlsController < ApplicationController
  def create
   url = Url.new(url_params)
   if  url.save!
     url.update!(short_url: SecureRandom.base64(5).split("=").first)
     redirect_to root_path
   else
     render :index
   end
 end
 def show

@url = Url.find_by_short_url(params[:id])
redirect_to  @url.long_url
 end


 def index
   @url = Url.new
   @urls = Url.all
 end
 private
 def url_params
 return  params.require(:url).permit(:long_url)
 end
end
