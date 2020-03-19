class EventMailer < ApplicationMailer
  add_template_helper(ApplicationHelper)

  def subscription(event, subscription)
    @email = subscription.user_email
    @name = subscription.user_name
    @event = event

    # Берём у юзер его email
    # Subject тоже можно переносить в локали
    mail to: event.user.email, subject: "Новая подписка на #{event.title}"
  end

  def comment(event, comment, email)
    @comment = comment
    @event = event

    mail to: email, subject: "Новый комментарий @ #{event.title}"
  end

  def photo(event, photo, email)
    @photo = photo
    @event = event
    @name = User.find(photo.user_id).name

    mail to: email, subject: "Новое фото @ #{event.title}"
  end
end
