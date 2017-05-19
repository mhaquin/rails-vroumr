class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @categories = ["Category"] + Category.all.map(&:name)
  end
end
