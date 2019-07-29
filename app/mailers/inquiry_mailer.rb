class InquiryMailer < ApplicationMailer
  def send_mail(inquiry)
    @inquiry = inquiry
    mail(
        from: 'techtecホームページお問い合わせフォーム',
        to:   'info@techtec.co.jp',
        subject: 'お問い合わせ'
    )
  end
end
