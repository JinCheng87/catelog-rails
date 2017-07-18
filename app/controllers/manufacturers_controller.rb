class ManufacturersController < ApplicationController
  before_action :find_manufacturer, only:[:show, :edit, :update, :destroy]

  def new
    @manufacturer = Manufacturer.new
    render :new, locals: { manufacturer: @manufacturer }
  end

  def update
    if @manufacturer.update(manufacturer_params)
      redirect_to @manufacturer, notice: 'updated successfully'
    else
      render :edit, locals: {manufacturer: @manufacturer}
    end
  end

  def index
    @manufacturers = Manufacturer.all
    render :index, locals: { manufacturers: @manufacturers }
  end

  def show
    render :show, locals: { manufacturer: @manufacturer }
  end

  def destroy
    @manufacturer.destroy
    redirect_to manufacturers_path, notice: 'delete successfully'
  end

  def edit
    render :edit, locals: {manufacturer: @manufacturer}
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)

    if @manufacturer.save!
      redirect_to @manufacturer, notice: 'Manufacturer was created sucessfully'
    else
      render :new, locals: { manufacturer: @manufacturer }
    end
  end

  private

  def find_manufacturer
    @manufacturer = Manufacturer.find_by(id: params[:id])
  end

  def manufacturer_params
    params.require(:manufacturer).permit(:name, :description)
  end
end