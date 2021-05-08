class HopeShiftsController < ApplicationController
  
  def index_user_id
    @hope_shifts = HopeShift.where(user_id: current_user)
  end
  
  def index_date
    # If the date is from the 1st to the 15th of the current month, the date from the 16th to the end of the current month will be displayed.
    # If the date is from the 16th to the end of the month, the date from the 1st to the 15th of the following month will be displayed.
    today = Date.today
    if today.mday <= 15
      start_day = Date.new(today.year, today.mon, 16)
      end_day = today.end_of_month
    else
      start_day = today.next_month.beginning_of_month
      end_day = Date.new(today.year, today.man + 1, 15)
    end
    @hope_shifts = HopeShift.where(date: start_day..end_day).order(:date)
  end
    
  def new
    @hope_shift = HopeShift.new
  end
  
  def create
    HopeShift.create(shift_params)
    redirect_to root_path
  end

  def edit
    @hope_shift = HopeShift.find(params[:id])
  end
  
  def update
    @hope_shift = HopeShift.find(params[:id])
    @hope_shift.update(shift_params)
    redirect_to hope_shifts_path
  end
  
  def destroy
    
  end
  
  private
  def shift_params
    params.require(:hope_shift).permit(:date, :start_time, :end_time, :user_id)
  end
  
end
