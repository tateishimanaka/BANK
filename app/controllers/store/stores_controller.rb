class Store::StoresController < ApplicationController

  def show
    @store = current_store
  end
end
