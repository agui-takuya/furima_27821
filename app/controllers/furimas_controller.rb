class FurimasController < ApplicationController
  # コントローラー定義↓
  def index
    @furimas = Frima.all
  end
end