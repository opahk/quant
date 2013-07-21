class BodyCompositionsController < ApplicationController

  def index
    @body_compositions = BodyComposition.all
  end
end
