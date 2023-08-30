class Batch::RemaindPlan
  def self.remaind_plan
    # Event.reload
    plans = Plan.all
    plans.each do |plan|
      # AM9時との時間差を時間単位で算出
      time_diff = (plan.date_time - Time.now.in_time_zone("Tokyo")) / 3600
      if time_diff <= 39 && time_diff >= 15 #次の日の予定なのかチェック
        RemaindPlanMailer.send_email(plan).deliver_now #メールの送信
        p "メールを#{plan.user.name}に送信しました" #ログとして表示
      end
    end
  end
end