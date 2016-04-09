class OmnifocusMailer < ActionMailer::Base
  default from: ENV["gmail_username"]

  def new_task(task_name, note)
    mail(
      to: ENV["omnifocus_mail"],
      subject: task_name,
      body: note,
      content_type: "text/html",
    )
  end
end
