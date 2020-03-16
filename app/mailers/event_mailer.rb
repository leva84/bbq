class EventMailer < ApplicationMailer

  def subscription(event, subscription)
    @email = subscription.user_email
    @name = subscription.user_name
    @event = event
    @relevance = relevance(event)

    # Берём у юзер его email
    # Subject тоже можно переносить в локали
    mail to: event.user.email, subject: "Новая подписка на #{event.title}"
  end

  def comment(event, comment, email)
    @comment = comment
    @event = event
    @relevance = relevance(event)

    mail to: email, subject: "Новый комментарий @ #{event.title}"
  end

  def photo(event, photo, email)
    @photo = photo
    @event = event
    @name = User.find(photo.user_id).name
    @relevance = relevance(event)

    mail to: email, subject: "Новое фото @ #{event.title}"
  end

  def relevance(event)
    if Time.new > event.datetime
      t '.relevance_false'
    else
      t '.relevance_true'
    end
  end
end
