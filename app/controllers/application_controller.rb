class ApplicationController < ActionController::Base
  def holder
    @ex = params['id']
    @header = "Database Element "
    @header = @header + @ex
    @pic = Meme.find_by_id(@ex)
    render 'show'
  end
  
  def new
  end
  
  def create
    g = Meme.new
    g.url = params['url']
    g.caption = params['caption']
    g.save
    redirect_to "/#{g.id}"
  end
  
  protect_from_forgery with: :exception
end
