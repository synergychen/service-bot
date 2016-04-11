class OmnifocusTasksController < ApplicationController
  def add_task
    title = params[:title]
    note = params[:note] || ""

    if title.present?
      OmnifocusMailer.new_task(title, note).deliver_now

      render json: {
        status: "success",
        data: {
          title: title,
          note: note
        }
      }
    else
      render json: {
        status: "fail",
        data: {
          title: "A title is required",
          note: note
        }
      }
    end
  end
end
