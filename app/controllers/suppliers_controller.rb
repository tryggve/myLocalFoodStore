class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
  end

  def new
    @supplier = Supplier.new
    @categories = SupplierCategory.all
  end

  def create
    @supplier = Supplier.new(params[:supplier]) #TODO: Avoid use mass assignment due to hackerz...
    @categories = SupplierCategory.all

    if @supplier.save
      flash[:message] = "Supplier saved!"
      redirect_to supplier_path @supplier
    else
      flash[:error] = "Unable to save supplier."
      render :action => :new
    end
  end

  def show
    @supplier = Supplier.find(params[:id])
  end

  def edit
    @supplier = Supplier.find_by_id(params[:id]) #TODO: What was the diffrence betweed find and find_by_id?
    @categories = SupplierCategory.all
  end

  def update
    @supplier = Supplier.find_by_id(params[:id])
    @categories = SupplierCategory.all

    if @supplier.update_attributes(params[:supplier])
      flash[:message] = "Supplier saved!"
      redirect_to supplier_path @supplier
    else
      flash[:error] = "Unable to save supplier."
      render :action => :edit
    end
  end

  def destroy
    @supplier = Supplier.find(params[:id]).destroy
    if @supplier.frozen?
      flash[:message] = "Supplier #{@supplier.name} was sucessfully removed."
    else
      flash[:error] = "Unable to remove supplier #{@supplier.name}."
    end
      redirect_to supplier_path @supplier
  end
end