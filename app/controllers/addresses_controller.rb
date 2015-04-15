class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :update, :destroy]

  def index
    @addresses = Address.all
    render "/addresses"
  end

  def show
    render "/address"
  end

  def create
    @address = Address.new(address_params)

    if @address.save
      render_success("Address was successfully created.")
    else
      render_error(@address.descriptive_error)
    end
  end

  def update
    if @address.update(address_params)
      render_success("Address was successfully updated.")
    else
      render_error(@address.descriptive_error)
    end
  end

  def destroy
    @address.destroy
    render_success("Address was successfully destroyed.")
  end

  private

  def set_address
    @address = Address.find(params[:id])
  end

  def address_params
    params.require(:address).permit(Address::PERMITTED_PARAMS)
  end
end
