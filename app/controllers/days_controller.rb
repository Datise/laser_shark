class DaysController < ApplicationController

  include CourseCalendar # concern

  def show
    @activities = Activity.chronological.for_day(day)
    if student?
      # Teachers dont have feedbacks associated with their model
      @day_feedback = current_user.day_feedbacks.new 
    end
  end


end
