class Store::HomesController < ApplicationController

  def top
  end

  def about
    @store = current_store
  end
end
