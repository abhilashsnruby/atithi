class CustomersController < ApplicationController
  before_action :customer_data, only: [:show, :edit, :update, :destroy]

  def index
    @customers = Customer.order(empname: :desc)
    respond_to do |format|
      format.html # index.html.erb 
      format.js
    end
  end

  def new
    @customer = Customer.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @customers = Customer.new(permit_customer)
    if @customers.save
      redirect_to(customers_path, notice: 'Customer was successfully saved')
    else
      render 'new'
    end
  end

  # def update
  #   @success = @customer.update_attributes(params[:])

  #   respond_to do |format|
  #     if @success
  #       format.html { redirect_to arrears_path, notice: 'Arrear was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: 'edit' }
  #       format.json { render json: @arrear.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  def destroy
    if @customer.destroy
      redirect_to(customers_path, notice: 'Customer was successfully deleted')
    end
  end

  def show
  end

  def edit
  end

  private

  def permit_customer
    params.require(:customer).permit(:empname, :date_of_joining, :date_of_birth, :marital_status, :present_res_name)
  end

  def customer_data
    @customer = Customer.find(params[:id])
  end

end