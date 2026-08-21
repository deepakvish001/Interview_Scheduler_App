class InterviewMailer < ApplicationMailer
  def reminder_send(participant)
    @participant = participant

    mail(to: @participant.email, subject: 'Your interview has been rescheduled')
  end
end
