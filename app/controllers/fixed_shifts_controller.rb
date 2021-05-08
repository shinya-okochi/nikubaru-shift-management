class FixedShiftsController < ApplicationController
  def new
    @fixed_shift = FixedShift.new
  end
  
  def create
    FixedShift.create(shift_params)
    redirect_to root_path
  end
  
  private
  def shift_params
    params.require(:fixed_shift).permit(:user_id, :date, :start_time, :end_time)
  end
  
end
