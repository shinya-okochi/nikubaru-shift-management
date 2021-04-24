class HopeShiftsController < ApplicationController
    
  def new
    @hope_shift = HopeShift.new
  end
  
  def create
    HopeShift.create(shift_params)
    redirect_to '/users/1'
  end

  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end
  
  private
  def shift_params
    params.require(:hope_shift).permit(:date, :start_time, :end_time, :user_id)
  end
  
end
