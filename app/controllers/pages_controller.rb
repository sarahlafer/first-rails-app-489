class PagesController < ApplicationController
  def about
  end

  def contact
    search = params[:member]
    @team = ["Dion", "Wiebke", "Nikos", "Arbi"]

    if search.present?
      @team = @team.select { |member| member == search.capitalize }
    end
  end

  def home
    @today = Date.today.strftime("%A, %b %d")
  end
end
