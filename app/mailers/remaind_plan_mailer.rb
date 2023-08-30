class RemaindPlanMailer < ApplicationMailer
  def send_email(plan)
    @plan = plan
    mail(subject: "予定のリマインド", to: plan.user.email)
  end
end
