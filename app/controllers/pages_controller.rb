class PagesController < ApplicationController
  def about
  end

  def contact
    @date = Date.today.strftime("%a, %b %d")
    @members = [ 'yoko', 'grzegorz', 'pedro', 'luis', 'stan' ]
    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
      end
     end

  end

  def home
    @date = Date.today.strftime("%a, %b %d")
  end
end
