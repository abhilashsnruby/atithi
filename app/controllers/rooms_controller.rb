class RoomsController < ApplicationController
  before_action :room_data, only: [:show, :edit, :update, :destroy]

  def index
    @rooms = Room.order(room_no: :desc)
    respond_to do |format|
      format.html # index.html.erb 
    end
  end

  def new
    @room = Room.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @rooms = Room.new(permit_room)
    if @rooms.save
      redirect_to(rooms_path, notice: 'Room was successfully saved')
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
    if @room.destroy
      redirect_to(rooms_path, notice: 'Room was successfully deleted')
    end
  end

  def show
  end

  def edit
  end

  private

  def permit_room
    params.require(:room).permit(:room_no, :capacity, :type_of_sharing, :floor_id)
  end

  def room_data
    @room = Room.find(params[:id])
  end
end