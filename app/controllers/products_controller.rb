class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    product
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: 'Tú producto se ha creado correctamente'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    product
  end

  def update  
    if product.update(product_params)
      redirect_to products_path, notice: 'Producto Actualizado'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy  
    product.destroy
    redirect_to products_path, notice: 'El producto se ha eliminado', status: :see_other
  end

  private

  def product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :description, :price, :photo)
  end
end
