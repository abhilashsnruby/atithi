class CustomersController < ApplicationController
  before_action :customer_data, only: [:show, :edit, :update, :destroy]

  def index
    @customers = Customer.order(empname: :desc)
    respond_to do |format|
      format.html # index.html.erb 
    end
  end

  def new
    @customer = Customer.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @customer = Customer.new(customer_params)
    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.js
         # { redirect_to(customers_path, notice: 'Customer was successfully saved') }
      else
        format.html { render 'new' }
      end
    end
  end

  def allot_room
    @customers = Customer.pluck :empname
    @rooms = Room.pluck :room_no
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

  def customer_params
    params.require(:customer).permit(:empname, :date_of_joining, :date_of_birth, :marital_status, :present_res_name, :mobile_no, :email, :perm_res_name, :room_id, :authenticity_token)
  end

  def customer_data
    @customer = Customer.find(params[:id])
  end
end