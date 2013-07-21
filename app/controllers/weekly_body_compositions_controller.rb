class WeeklyBodyCompositionsController < ApplicationController

  def index
    @body_compositions = WeeklyBodyComposition.all
  end
end
