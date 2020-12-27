module ApplicationHelper  
  def profile_picture account
    thumb = account.image.attached? ? url_for(account.image) : "default_avatar.png"
    image_tag(thumb, width: 150, class: "profile_pic img-circle")
  end

  def flash_notifications
    flash_messages = []

    flash.each do |type, message|
      type = 'success' if type == 'notice'
      type = 'error' if type == 'alert' || type == 'danger'
      text = "toastr['#{type}']('#{message}');"
      flash_messages << text.html_safe unless message.blank?
    end
    
    "<script>$(fuction(){ #{ flash_messages.join("\n") } }); </script>".html_safe if flash_messages.any?
  end
end
