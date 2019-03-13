class AddressesController < ApplicationController
  def index
    @address = Address.all
    render json: @address, status: :ok
  end

  def show
    @address = Address.find(params[:id])
    render json: @address, status: :ok
  end

  def find_by_street
    @addresses = Address.where(street: params[:street])
    render json:  @addresses, status: :ok
  end

  def get_user
    @address = Address.find(params[:address_id])
    render json: { user: @address.user }, status: :ok
  end
end
