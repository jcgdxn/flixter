#/* student's Course Page */
class LessonsController < ApplicationController
  #before_action :authenticate_user!
  #before_action :require_authorized_for_current_lesson.section.course, only: [:show]

  #def require_authorized_for_current_lesson.section.course
  #  if current_course.user != current_user
  #    redirect_to root_url, alert: 'Error Message Here'
  #    render plain: "Unauthorized", status: :unauthorized
  #  end
  #end



  def show

  end

private

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end
end
