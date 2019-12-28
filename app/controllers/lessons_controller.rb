#/* student's Course Page */
class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_lesson, only: [:show]

  def require_authorized_for_current_lesson
    if !current_user.enrolled_in? (current_lesson.section.course)
      redirect_to course_path(current_lesson.section.course), alert: 'ERROR: Looks like you need to Enroll'
      #render plain: "Unauthorized", status: :unauthorized
    #else
    #  redirect_to current_lesson.section.course

    end
  end



  def show

  end

private

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end
end
